#include "des.h"

// This is a compact, self-contained DES implementation (ECB single-block)
// Tables from the DES standard (FIPS 46-3). Values are public-domain

// Initial Permutation (IP)
static const uint8_t IP[64] = {
 58, 50, 42, 34, 26, 18, 10, 2,
 60, 52, 44, 36, 28, 20, 12, 4,
 62, 54, 46, 38, 30, 22, 14, 6,
 64, 56, 48, 40, 32, 24, 16, 8,
 57, 49, 41, 33, 25, 17, 9, 1,
 59, 51, 43, 35, 27, 19, 11, 3,
 61, 53, 45, 37, 29, 21, 13, 5,
 63, 55, 47, 39, 31, 23, 15, 7
};

// Final Permutation (FP = IP^-1)
static const uint8_t FP[64] = {
 40, 8, 48, 16, 56, 24, 64, 32,
 39, 7, 47, 15, 55, 23, 63, 31,
 38, 6, 46, 14, 54, 22, 62, 30,
 37, 5, 45, 13, 53, 21, 61, 29,
 36, 4, 44, 12, 52, 20, 60, 28,
 35, 3, 43, 11, 51, 19, 59, 27,
 34, 2, 42, 10, 50, 18, 58, 26,
 33, 1, 41, 9, 49, 17, 57, 25
};

// Permuted Choice 1 (PC-1) - from 64-bit key to 56-bit (C and D)
static const uint8_t PC1[56] = {
 57,49,41,33,25,17,9,
 1,58,50,42,34,26,18,
 10,2,59,51,43,35,27,
 19,11,3,60,52,44,36,
 63,55,47,39,31,23,15,
 7,62,54,46,38,30,22,
 14,6,61,53,45,37,29,
 21,13,5,28,20,12,4
};

// Permuted Choice 2 (PC-2) - from C,D (56 bits) to subkey (48 bits)
static const uint8_t PC2[48] = {
 14,17,11,24,1,5,
 3,28,15,6,21,10,
 23,19,12,4,26,8,
 16,7,27,20,13,2,
 41,52,31,37,47,55,
 30,40,51,45,33,48,
 44,49,39,56,34,53,
 46,42,50,36,29,32
};

// Number of left shifts per round
static const uint8_t SHIFTS[16] = {
 1, 1, 2, 2, 2, 2, 2, 2,
 1, 2, 2, 2, 2, 2, 2, 1
};

// Expansion permutation (E) from 32 to 48 bits
static const uint8_t E[48] = {
 32, 1, 2, 3, 4, 5,
 4, 5, 6, 7, 8, 9,
 8, 9,10,11,12,13,
 12,13,14,15,16,17,
 16,17,18,19,20,21,
 20,21,22,23,24,25,
 24,25,26,27,28,29,
 28,29,30,31,32,1
};

// S-boxes (8 boxes, each 4x16)
static const uint8_t SBOX[8][64] = {
 // S1
 {
 14,4,13,1,2,15,11,8,3,10,6,12,5,9,0,7,
 0,15,7,4,14,2,13,1,10,6,12,11,9,5,3,8,
 4,1,14,8,13,6,2,11,15,12,9,7,3,10,5,0,
 15,12,8,2,4,9,1,7,5,11,3,14,10,0,6,13
 },
 // S2
 {
 15,1,8,14,6,11,3,4,9,7,2,13,12,0,5,10,
 3,13,4,7,15,2,8,14,12,0,1,10,6,9,11,5,
 0,14,7,11,10,4,13,1,5,8,12,6,9,3,2,15,
 13,8,10,1,3,15,4,2,11,6,7,12,0,5,14,9
 },
 // S3
 {
 10,0,9,14,6,3,15,5,1,13,12,7,11,4,2,8,
 13,7,0,9,3,4,6,10,2,8,5,14,12,11,15,1,
 13,6,4,9,8,15,3,0,11,1,2,12,5,10,14,7,
 1,10,13,0,6,9,8,7,4,15,14,3,11,5,2,12
 },
 // S4
 {
 7,13,14,3,0,6,9,10,1,2,8,5,11,12,4,15,
 13,8,11,5,6,15,0,3,4,7,2,12,1,10,14,9,
 10,6,9,0,12,11,7,13,15,1,3,14,5,2,8,4,
 3,15,0,6,10,1,13,8,9,4,5,11,12,7,2,14
 },
 // S5
 {
 2,12,4,1,7,10,11,6,8,5,3,15,13,0,14,9,
 14,11,2,12,4,7,13,1,5,0,15,10,3,9,8,6,
 4,2,1,11,10,13,7,8,15,9,12,5,6,3,0,14,
 11,8,12,7,1,14,2,13,6,15,0,9,10,4,5,3
 },
 // S6
 {
 12,1,10,15,9,2,6,8,0,13,3,4,14,7,5,11,
 10,15,4,2,7,12,9,5,6,1,13,14,0,11,3,8,
 9,14,15,5,2,8,12,3,7,0,4,10,1,13,11,6,
 4,3,2,12,9,5,15,10,11,14,1,7,6,0,8,13
 },
 // S7
 {
 4,11,2,14,15,0,8,13,3,12,9,7,5,10,6,1,
 13,0,11,7,4,9,1,10,14,3,5,12,2,15,8,6,
 1,4,11,13,12,3,7,14,10,15,6,8,0,5,9,2,
 6,11,13,8,1,4,10,7,9,5,0,15,14,2,3,12
 },
 // S8
 {
 13,2,8,4,6,15,11,1,10,9,3,14,5,0,12,7,
 1,15,13,8,10,3,7,4,12,5,6,11,0,14,9,2,
 7,11,4,1,9,12,14,2,0,6,10,13,15,3,5,8,
 2,1,14,7,4,10,8,13,15,12,9,0,3,5,6,11
 }
};

// Permutation P
static const uint8_t P[32] = {
 16,7,20,21,
 29,12,28,17,
 1,15,23,26,
 5,18,31,10,
 2,8,24,14,
 32,27,3,9,
 19,13,30,6,
 22,11,4,25
};

static inline uint64_t permute(uint64_t in, const uint8_t *table, int n, int inbits) {
    uint64_t out = 0;
    for (int i = 0; i < n; ++i) {
        int src = inbits - table[i];
        out <<= 1;
        out |= (in >> src) & 0x1ULL;
    }
    return out;
}

static inline uint32_t rol28(uint32_t x, uint8_t s) {
    return ((x << s) | (x >> (28 - s))) & 0x0FFFFFFF;
}

void des_key_schedule(uint64_t key64, uint64_t out_subkeys[16]) {
    // Apply PC1 to get 56-bit key -> C and D (28 bits each)
    uint64_t key56 = permute(key64, PC1, 56, 64);
    uint32_t C = (uint32_t)((key56 >> 28) & 0x0FFFFFFF);
    uint32_t D = (uint32_t)(key56 & 0x0FFFFFFF);

    for (int r = 0; r < 16; ++r) {
        C = rol28(C, SHIFTS[r]);
        D = rol28(D, SHIFTS[r]);
        uint64_t CD = (((uint64_t)C) << 28) | (uint64_t)D;
        // Apply PC2 to get 48-bit subkey
        out_subkeys[r] = permute(CD, PC2, 48, 56);
    }
}

static inline uint32_t feistel(uint32_t R, uint64_t subkey48) {
    // Expand R from 32 to 48 bits
    uint64_t ER = permute((uint64_t)R, E, 48, 32);
    // XOR with subkey
    uint64_t x = ER ^ subkey48;
    // S-box substitution: process 8 groups of 6 bits
    uint32_t out32 = 0;
    for (int i = 0; i < 8; ++i) {
        uint8_t six = (x >> (42 - 6*i)) & 0x3F; // take 6 bits
        uint8_t row = ((six & 0x20) >> 4) | (six & 0x1); // b1 b6
        uint8_t col = (six >> 1) & 0x0F; // b2..b5
        uint8_t sval = SBOX[i][row*16 + col];
        out32 = (out32 << 4) | sval;
    }
    // Permutation P
    out32 = (uint32_t)permute(out32, P, 32, 32);
    return out32;
}

static inline uint64_t ip(uint64_t x) { return permute(x, IP, 64, 64); }
static inline uint64_t fp(uint64_t x) { return permute(x, FP, 64, 64); }

uint64_t des_encrypt_block(uint64_t block, const uint64_t subkeys[16]) {
    uint64_t x = ip(block);
    uint32_t L = (uint32_t)(x >> 32);
    uint32_t R = (uint32_t)(x & 0xFFFFFFFF);

    for (int r = 0; r < 16; ++r) {
        uint32_t f = feistel(R, subkeys[r]);
        uint32_t newL = R;
        uint32_t newR = L ^ f;
        L = newL;
        R = newR;
    }
    // Note the swap at the end (R,L)
    uint64_t preout = (((uint64_t)R) << 32) | (uint64_t)L;
    return fp(preout);
}

uint64_t des_decrypt_block(uint64_t block, const uint64_t subkeys[16]) {
    uint64_t x = ip(block);
    uint32_t L = (uint32_t)(x >> 32);
    uint32_t R = (uint32_t)(x & 0xFFFFFFFF);

    for (int r = 15; r >= 0; --r) {
        uint32_t f = feistel(R, subkeys[r]);
        uint32_t newL = R;
        uint32_t newR = L ^ f;
        L = newL;
        R = newR;
    }
    uint64_t preout = (((uint64_t)R) << 32) | (uint64_t)L;
    return fp(preout);
}

uint64_t des_encrypt(uint64_t block, uint64_t key64) {
    uint64_t subkeys[16];
    des_key_schedule(key64, subkeys);
    return des_encrypt_block(block, subkeys);
}

uint64_t des_decrypt(uint64_t block, uint64_t key64) {
    uint64_t subkeys[16];
    des_key_schedule(key64, subkeys);
    return des_decrypt_block(block, subkeys);
}

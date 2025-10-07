#ifndef DES_H
#define DES_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

// DES operates on 64-bit blocks and uses a 64-bit key (56 bits effective, 8 parity bits)
// No dynamic allocation. All functions are pure and side-effect free except for outputs.

// Key schedule: generates 16 subkeys (16 x 48-bit) from a 64-bit key.
// out_subkeys must be an array of 16 elements, each holding 48 bits in the LSBs of uint64_t.
void des_key_schedule(uint64_t key64, uint64_t out_subkeys[16]);

// Encrypt/decrypt a single 64-bit block using provided 16 subkeys.
uint64_t des_encrypt_block(uint64_t block, const uint64_t subkeys[16]);
uint64_t des_decrypt_block(uint64_t block, const uint64_t subkeys[16]);

// Convenience one-shot APIs taking the 64-bit key and computing subkeys internally.
uint64_t des_encrypt(uint64_t block, uint64_t key64);
uint64_t des_decrypt(uint64_t block, uint64_t key64);

#ifdef __cplusplus
}
#endif

#endif // DES_H

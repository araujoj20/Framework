# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/bignum_mod_raw.c"
# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/out//"
# 1 "<built-in>"
#define __STDC__ 1
#define __STDC_VERSION__ 199901L
#define __STDC_UTF_16__ 1
#define __STDC_UTF_32__ 1
#define __STDC_HOSTED__ 0
#define __GNUC__ 10
#define __GNUC_MINOR__ 3
#define __GNUC_PATCHLEVEL__ 1
#define __VERSION__ "10.3.1 20210824 (release)"
#define __ATOMIC_RELAXED 0
#define __ATOMIC_SEQ_CST 5
#define __ATOMIC_ACQUIRE 2
#define __ATOMIC_RELEASE 3
#define __ATOMIC_ACQ_REL 4
#define __ATOMIC_CONSUME 1
#define __OPTIMIZE__ 1
#define __FINITE_MATH_ONLY__ 0
#define __SIZEOF_INT__ 4
#define __SIZEOF_LONG__ 4
#define __SIZEOF_LONG_LONG__ 8
#define __SIZEOF_SHORT__ 2
#define __SIZEOF_FLOAT__ 4
#define __SIZEOF_DOUBLE__ 8
#define __SIZEOF_LONG_DOUBLE__ 8
#define __SIZEOF_SIZE_T__ 4
#define __CHAR_BIT__ 8
#define __BIGGEST_ALIGNMENT__ 8
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_PDP_ENDIAN__ 3412
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __SIZEOF_POINTER__ 4
#define __SIZE_TYPE__ unsigned int
#define __PTRDIFF_TYPE__ int
#define __WCHAR_TYPE__ unsigned int
#define __WINT_TYPE__ unsigned int
#define __INTMAX_TYPE__ long long int
#define __UINTMAX_TYPE__ long long unsigned int
#define __CHAR16_TYPE__ short unsigned int
#define __CHAR32_TYPE__ long unsigned int
#define __SIG_ATOMIC_TYPE__ int
#define __INT8_TYPE__ signed char
#define __INT16_TYPE__ short int
#define __INT32_TYPE__ long int
#define __INT64_TYPE__ long long int
#define __UINT8_TYPE__ unsigned char
#define __UINT16_TYPE__ short unsigned int
#define __UINT32_TYPE__ long unsigned int
#define __UINT64_TYPE__ long long unsigned int
#define __INT_LEAST8_TYPE__ signed char
#define __INT_LEAST16_TYPE__ short int
#define __INT_LEAST32_TYPE__ long int
#define __INT_LEAST64_TYPE__ long long int
#define __UINT_LEAST8_TYPE__ unsigned char
#define __UINT_LEAST16_TYPE__ short unsigned int
#define __UINT_LEAST32_TYPE__ long unsigned int
#define __UINT_LEAST64_TYPE__ long long unsigned int
#define __INT_FAST8_TYPE__ int
#define __INT_FAST16_TYPE__ int
#define __INT_FAST32_TYPE__ int
#define __INT_FAST64_TYPE__ long long int
#define __UINT_FAST8_TYPE__ unsigned int
#define __UINT_FAST16_TYPE__ unsigned int
#define __UINT_FAST32_TYPE__ unsigned int
#define __UINT_FAST64_TYPE__ long long unsigned int
#define __INTPTR_TYPE__ int
#define __UINTPTR_TYPE__ unsigned int
#define __GXX_ABI_VERSION 1014
#define __SCHAR_MAX__ 0x7f
#define __SHRT_MAX__ 0x7fff
#define __INT_MAX__ 0x7fffffff
#define __LONG_MAX__ 0x7fffffffL
#define __LONG_LONG_MAX__ 0x7fffffffffffffffLL
#define __WCHAR_MAX__ 0xffffffffU
#define __WCHAR_MIN__ 0U
#define __WINT_MAX__ 0xffffffffU
#define __WINT_MIN__ 0U
#define __PTRDIFF_MAX__ 0x7fffffff
#define __SIZE_MAX__ 0xffffffffU
#define __SCHAR_WIDTH__ 8
#define __SHRT_WIDTH__ 16
#define __INT_WIDTH__ 32
#define __LONG_WIDTH__ 32
#define __LONG_LONG_WIDTH__ 64
#define __WCHAR_WIDTH__ 32
#define __WINT_WIDTH__ 32
#define __PTRDIFF_WIDTH__ 32
#define __SIZE_WIDTH__ 32
#define __INTMAX_MAX__ 0x7fffffffffffffffLL
#define __INTMAX_C(c) c ## LL
#define __UINTMAX_MAX__ 0xffffffffffffffffULL
#define __UINTMAX_C(c) c ## ULL
#define __INTMAX_WIDTH__ 64
#define __SIG_ATOMIC_MAX__ 0x7fffffff
#define __SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)
#define __SIG_ATOMIC_WIDTH__ 32
#define __INT8_MAX__ 0x7f
#define __INT16_MAX__ 0x7fff
#define __INT32_MAX__ 0x7fffffffL
#define __INT64_MAX__ 0x7fffffffffffffffLL
#define __UINT8_MAX__ 0xff
#define __UINT16_MAX__ 0xffff
#define __UINT32_MAX__ 0xffffffffUL
#define __UINT64_MAX__ 0xffffffffffffffffULL
#define __INT_LEAST8_MAX__ 0x7f
#define __INT8_C(c) c
#define __INT_LEAST8_WIDTH__ 8
#define __INT_LEAST16_MAX__ 0x7fff
#define __INT16_C(c) c
#define __INT_LEAST16_WIDTH__ 16
#define __INT_LEAST32_MAX__ 0x7fffffffL
#define __INT32_C(c) c ## L
#define __INT_LEAST32_WIDTH__ 32
#define __INT_LEAST64_MAX__ 0x7fffffffffffffffLL
#define __INT64_C(c) c ## LL
#define __INT_LEAST64_WIDTH__ 64
#define __UINT_LEAST8_MAX__ 0xff
#define __UINT8_C(c) c
#define __UINT_LEAST16_MAX__ 0xffff
#define __UINT16_C(c) c
#define __UINT_LEAST32_MAX__ 0xffffffffUL
#define __UINT32_C(c) c ## UL
#define __UINT_LEAST64_MAX__ 0xffffffffffffffffULL
#define __UINT64_C(c) c ## ULL
#define __INT_FAST8_MAX__ 0x7fffffff
#define __INT_FAST8_WIDTH__ 32
#define __INT_FAST16_MAX__ 0x7fffffff
#define __INT_FAST16_WIDTH__ 32
#define __INT_FAST32_MAX__ 0x7fffffff
#define __INT_FAST32_WIDTH__ 32
#define __INT_FAST64_MAX__ 0x7fffffffffffffffLL
#define __INT_FAST64_WIDTH__ 64
#define __UINT_FAST8_MAX__ 0xffffffffU
#define __UINT_FAST16_MAX__ 0xffffffffU
#define __UINT_FAST32_MAX__ 0xffffffffU
#define __UINT_FAST64_MAX__ 0xffffffffffffffffULL
#define __INTPTR_MAX__ 0x7fffffff
#define __INTPTR_WIDTH__ 32
#define __UINTPTR_MAX__ 0xffffffffU
#define __GCC_IEC_559 0
#define __GCC_IEC_559_COMPLEX 0
#define __FLT_EVAL_METHOD__ 0
#define __FLT_EVAL_METHOD_TS_18661_3__ 0
#define __DEC_EVAL_METHOD__ 2
#define __FLT_RADIX__ 2
#define __FLT_MANT_DIG__ 24
#define __FLT_DIG__ 6
#define __FLT_MIN_EXP__ (-125)
#define __FLT_MIN_10_EXP__ (-37)
#define __FLT_MAX_EXP__ 128
#define __FLT_MAX_10_EXP__ 38
#define __FLT_DECIMAL_DIG__ 9
#define __FLT_MAX__ 3.4028234663852886e+38F
#define __FLT_NORM_MAX__ 3.4028234663852886e+38F
#define __FLT_MIN__ 1.1754943508222875e-38F
#define __FLT_EPSILON__ 1.1920928955078125e-7F
#define __FLT_DENORM_MIN__ 1.4012984643248171e-45F
#define __FLT_HAS_DENORM__ 1
#define __FLT_HAS_INFINITY__ 1
#define __FLT_HAS_QUIET_NAN__ 1
#define __DBL_MANT_DIG__ 53
#define __DBL_DIG__ 15
#define __DBL_MIN_EXP__ (-1021)
#define __DBL_MIN_10_EXP__ (-307)
#define __DBL_MAX_EXP__ 1024
#define __DBL_MAX_10_EXP__ 308
#define __DBL_DECIMAL_DIG__ 17
#define __DBL_MAX__ ((double)1.7976931348623157e+308L)
#define __DBL_NORM_MAX__ ((double)1.7976931348623157e+308L)
#define __DBL_MIN__ ((double)2.2250738585072014e-308L)
#define __DBL_EPSILON__ ((double)2.2204460492503131e-16L)
#define __DBL_DENORM_MIN__ ((double)4.9406564584124654e-324L)
#define __DBL_HAS_DENORM__ 1
#define __DBL_HAS_INFINITY__ 1
#define __DBL_HAS_QUIET_NAN__ 1
#define __LDBL_MANT_DIG__ 53
#define __LDBL_DIG__ 15
#define __LDBL_MIN_EXP__ (-1021)
#define __LDBL_MIN_10_EXP__ (-307)
#define __LDBL_MAX_EXP__ 1024
#define __LDBL_MAX_10_EXP__ 308
#define __DECIMAL_DIG__ 17
#define __LDBL_DECIMAL_DIG__ 17
#define __LDBL_MAX__ 1.7976931348623157e+308L
#define __LDBL_NORM_MAX__ 1.7976931348623157e+308L
#define __LDBL_MIN__ 2.2250738585072014e-308L
#define __LDBL_EPSILON__ 2.2204460492503131e-16L
#define __LDBL_DENORM_MIN__ 4.9406564584124654e-324L
#define __LDBL_HAS_DENORM__ 1
#define __LDBL_HAS_INFINITY__ 1
#define __LDBL_HAS_QUIET_NAN__ 1
#define __FLT32_MANT_DIG__ 24
#define __FLT32_DIG__ 6
#define __FLT32_MIN_EXP__ (-125)
#define __FLT32_MIN_10_EXP__ (-37)
#define __FLT32_MAX_EXP__ 128
#define __FLT32_MAX_10_EXP__ 38
#define __FLT32_DECIMAL_DIG__ 9
#define __FLT32_MAX__ 3.4028234663852886e+38F32
#define __FLT32_NORM_MAX__ 3.4028234663852886e+38F32
#define __FLT32_MIN__ 1.1754943508222875e-38F32
#define __FLT32_EPSILON__ 1.1920928955078125e-7F32
#define __FLT32_DENORM_MIN__ 1.4012984643248171e-45F32
#define __FLT32_HAS_DENORM__ 1
#define __FLT32_HAS_INFINITY__ 1
#define __FLT32_HAS_QUIET_NAN__ 1
#define __FLT64_MANT_DIG__ 53
#define __FLT64_DIG__ 15
#define __FLT64_MIN_EXP__ (-1021)
#define __FLT64_MIN_10_EXP__ (-307)
#define __FLT64_MAX_EXP__ 1024
#define __FLT64_MAX_10_EXP__ 308
#define __FLT64_DECIMAL_DIG__ 17
#define __FLT64_MAX__ 1.7976931348623157e+308F64
#define __FLT64_NORM_MAX__ 1.7976931348623157e+308F64
#define __FLT64_MIN__ 2.2250738585072014e-308F64
#define __FLT64_EPSILON__ 2.2204460492503131e-16F64
#define __FLT64_DENORM_MIN__ 4.9406564584124654e-324F64
#define __FLT64_HAS_DENORM__ 1
#define __FLT64_HAS_INFINITY__ 1
#define __FLT64_HAS_QUIET_NAN__ 1
#define __FLT32X_MANT_DIG__ 53
#define __FLT32X_DIG__ 15
#define __FLT32X_MIN_EXP__ (-1021)
#define __FLT32X_MIN_10_EXP__ (-307)
#define __FLT32X_MAX_EXP__ 1024
#define __FLT32X_MAX_10_EXP__ 308
#define __FLT32X_DECIMAL_DIG__ 17
#define __FLT32X_MAX__ 1.7976931348623157e+308F32x
#define __FLT32X_NORM_MAX__ 1.7976931348623157e+308F32x
#define __FLT32X_MIN__ 2.2250738585072014e-308F32x
#define __FLT32X_EPSILON__ 2.2204460492503131e-16F32x
#define __FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x
#define __FLT32X_HAS_DENORM__ 1
#define __FLT32X_HAS_INFINITY__ 1
#define __FLT32X_HAS_QUIET_NAN__ 1
#define __SFRACT_FBIT__ 7
#define __SFRACT_IBIT__ 0
#define __SFRACT_MIN__ (-0.5HR-0.5HR)
#define __SFRACT_MAX__ 0X7FP-7HR
#define __SFRACT_EPSILON__ 0x1P-7HR
#define __USFRACT_FBIT__ 8
#define __USFRACT_IBIT__ 0
#define __USFRACT_MIN__ 0.0UHR
#define __USFRACT_MAX__ 0XFFP-8UHR
#define __USFRACT_EPSILON__ 0x1P-8UHR
#define __FRACT_FBIT__ 15
#define __FRACT_IBIT__ 0
#define __FRACT_MIN__ (-0.5R-0.5R)
#define __FRACT_MAX__ 0X7FFFP-15R
#define __FRACT_EPSILON__ 0x1P-15R
#define __UFRACT_FBIT__ 16
#define __UFRACT_IBIT__ 0
#define __UFRACT_MIN__ 0.0UR
#define __UFRACT_MAX__ 0XFFFFP-16UR
#define __UFRACT_EPSILON__ 0x1P-16UR
#define __LFRACT_FBIT__ 31
#define __LFRACT_IBIT__ 0
#define __LFRACT_MIN__ (-0.5LR-0.5LR)
#define __LFRACT_MAX__ 0X7FFFFFFFP-31LR
#define __LFRACT_EPSILON__ 0x1P-31LR
#define __ULFRACT_FBIT__ 32
#define __ULFRACT_IBIT__ 0
#define __ULFRACT_MIN__ 0.0ULR
#define __ULFRACT_MAX__ 0XFFFFFFFFP-32ULR
#define __ULFRACT_EPSILON__ 0x1P-32ULR
#define __LLFRACT_FBIT__ 63
#define __LLFRACT_IBIT__ 0
#define __LLFRACT_MIN__ (-0.5LLR-0.5LLR)
#define __LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR
#define __LLFRACT_EPSILON__ 0x1P-63LLR
#define __ULLFRACT_FBIT__ 64
#define __ULLFRACT_IBIT__ 0
#define __ULLFRACT_MIN__ 0.0ULLR
#define __ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR
#define __ULLFRACT_EPSILON__ 0x1P-64ULLR
#define __SACCUM_FBIT__ 7
#define __SACCUM_IBIT__ 8
#define __SACCUM_MIN__ (-0X1P7HK-0X1P7HK)
#define __SACCUM_MAX__ 0X7FFFP-7HK
#define __SACCUM_EPSILON__ 0x1P-7HK
#define __USACCUM_FBIT__ 8
#define __USACCUM_IBIT__ 8
#define __USACCUM_MIN__ 0.0UHK
#define __USACCUM_MAX__ 0XFFFFP-8UHK
#define __USACCUM_EPSILON__ 0x1P-8UHK
#define __ACCUM_FBIT__ 15
#define __ACCUM_IBIT__ 16
#define __ACCUM_MIN__ (-0X1P15K-0X1P15K)
#define __ACCUM_MAX__ 0X7FFFFFFFP-15K
#define __ACCUM_EPSILON__ 0x1P-15K
#define __UACCUM_FBIT__ 16
#define __UACCUM_IBIT__ 16
#define __UACCUM_MIN__ 0.0UK
#define __UACCUM_MAX__ 0XFFFFFFFFP-16UK
#define __UACCUM_EPSILON__ 0x1P-16UK
#define __LACCUM_FBIT__ 31
#define __LACCUM_IBIT__ 32
#define __LACCUM_MIN__ (-0X1P31LK-0X1P31LK)
#define __LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK
#define __LACCUM_EPSILON__ 0x1P-31LK
#define __ULACCUM_FBIT__ 32
#define __ULACCUM_IBIT__ 32
#define __ULACCUM_MIN__ 0.0ULK
#define __ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK
#define __ULACCUM_EPSILON__ 0x1P-32ULK
#define __LLACCUM_FBIT__ 31
#define __LLACCUM_IBIT__ 32
#define __LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)
#define __LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK
#define __LLACCUM_EPSILON__ 0x1P-31LLK
#define __ULLACCUM_FBIT__ 32
#define __ULLACCUM_IBIT__ 32
#define __ULLACCUM_MIN__ 0.0ULLK
#define __ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK
#define __ULLACCUM_EPSILON__ 0x1P-32ULLK
#define __QQ_FBIT__ 7
#define __QQ_IBIT__ 0
#define __HQ_FBIT__ 15
#define __HQ_IBIT__ 0
#define __SQ_FBIT__ 31
#define __SQ_IBIT__ 0
#define __DQ_FBIT__ 63
#define __DQ_IBIT__ 0
#define __TQ_FBIT__ 127
#define __TQ_IBIT__ 0
#define __UQQ_FBIT__ 8
#define __UQQ_IBIT__ 0
#define __UHQ_FBIT__ 16
#define __UHQ_IBIT__ 0
#define __USQ_FBIT__ 32
#define __USQ_IBIT__ 0
#define __UDQ_FBIT__ 64
#define __UDQ_IBIT__ 0
#define __UTQ_FBIT__ 128
#define __UTQ_IBIT__ 0
#define __HA_FBIT__ 7
#define __HA_IBIT__ 8
#define __SA_FBIT__ 15
#define __SA_IBIT__ 16
#define __DA_FBIT__ 31
#define __DA_IBIT__ 32
#define __TA_FBIT__ 63
#define __TA_IBIT__ 64
#define __UHA_FBIT__ 8
#define __UHA_IBIT__ 8
#define __USA_FBIT__ 16
#define __USA_IBIT__ 16
#define __UDA_FBIT__ 32
#define __UDA_IBIT__ 32
#define __UTA_FBIT__ 64
#define __UTA_IBIT__ 64
#define __REGISTER_PREFIX__ 
#define __USER_LABEL_PREFIX__ 
#define __GNUC_STDC_INLINE__ 1
#define __CHAR_UNSIGNED__ 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1
#define __GCC_ATOMIC_BOOL_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR16_T_LOCK_FREE 2
#define __GCC_ATOMIC_CHAR32_T_LOCK_FREE 2
#define __GCC_ATOMIC_WCHAR_T_LOCK_FREE 2
#define __GCC_ATOMIC_SHORT_LOCK_FREE 2
#define __GCC_ATOMIC_INT_LOCK_FREE 2
#define __GCC_ATOMIC_LONG_LOCK_FREE 2
#define __GCC_ATOMIC_LLONG_LOCK_FREE 1
#define __GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1
#define __GCC_ATOMIC_POINTER_LOCK_FREE 2
#define __HAVE_SPECULATION_SAFE_VALUE 1
#define __GCC_HAVE_DWARF2_CFI_ASM 1
#define __PRAGMA_REDEFINE_EXTNAME 1
#define __SIZEOF_WCHAR_T__ 4
#define __SIZEOF_WINT_T__ 4
#define __SIZEOF_PTRDIFF_T__ 4
#define __ARM_FEATURE_DSP 1
#define __ARM_FEATURE_QBIT 1
#define __ARM_FEATURE_SAT 1
#undef __ARM_FEATURE_CRYPTO
# 1 "<built-in>"
#define __ARM_FEATURE_UNALIGNED 1
#undef __ARM_FEATURE_QRDMX
# 1 "<built-in>"
#undef __ARM_FEATURE_CRC32
# 1 "<built-in>"
#undef __ARM_FEATURE_DOTPROD
# 1 "<built-in>"
#undef __ARM_FEATURE_COMPLEX
# 1 "<built-in>"
#define __ARM_32BIT_STATE 1
#undef __ARM_FEATURE_MVE
# 1 "<built-in>"
#undef __ARM_FEATURE_CMSE
# 1 "<built-in>"
#undef __ARM_FEATURE_LDREX
# 1 "<built-in>"
#define __ARM_FEATURE_LDREX 7
#define __ARM_FEATURE_CLZ 1
#undef __ARM_FEATURE_NUMERIC_MAXMIN
# 1 "<built-in>"
#define __ARM_FEATURE_SIMD32 1
#define __ARM_SIZEOF_MINIMAL_ENUM 1
#define __ARM_SIZEOF_WCHAR_T 4
#undef __ARM_ARCH_PROFILE
# 1 "<built-in>"
#define __ARM_ARCH_PROFILE 77
#define __arm__ 1
#undef __ARM_ARCH
# 1 "<built-in>"
#define __ARM_ARCH 7
#define __APCS_32__ 1
#define __GCC_ASM_FLAG_OUTPUTS__ 1
#define __thumb__ 1
#define __thumb2__ 1
#define __THUMBEL__ 1
#undef __ARM_ARCH_ISA_THUMB
# 1 "<built-in>"
#define __ARM_ARCH_ISA_THUMB 2
#define __ARMEL__ 1
#define __SOFTFP__ 1
#define __VFP_FP__ 1
#undef __ARM_FP
# 1 "<built-in>"
#undef __ARM_FP16_FORMAT_IEEE
# 1 "<built-in>"
#undef __ARM_FP16_FORMAT_ALTERNATIVE
# 1 "<built-in>"
#undef __ARM_FP16_ARGS
# 1 "<built-in>"
#undef __ARM_FEATURE_FP16_SCALAR_ARITHMETIC
# 1 "<built-in>"
#undef __ARM_FEATURE_FP16_VECTOR_ARITHMETIC
# 1 "<built-in>"
#undef __ARM_FEATURE_FP16_FML
# 1 "<built-in>"
#undef __ARM_FEATURE_FMA
# 1 "<built-in>"
#undef __ARM_NEON__
# 1 "<built-in>"
#undef __ARM_NEON
# 1 "<built-in>"
#undef __ARM_NEON_FP
# 1 "<built-in>"
#define __ARM_ARCH_7EM__ 1
#define __ARM_PCS 1
#define __ARM_EABI__ 1
#undef __FDPIC__
# 1 "<built-in>"
#define __ARM_ARCH_EXT_IDIV__ 1
#define __ARM_FEATURE_IDIV 1
#define __ARM_ASM_SYNTAX_UNIFIED__ 1
#undef __ARM_FEATURE_COPROC
# 1 "<built-in>"
#define __ARM_FEATURE_COPROC 15
#undef __ARM_FEATURE_CDE
# 1 "<built-in>"
#undef __ARM_FEATURE_CDE_COPROC
# 1 "<built-in>"
#undef __ARM_FEATURE_MATMUL_INT8
# 1 "<built-in>"
#undef __ARM_FEATURE_BF16_SCALAR_ARITHMETIC
# 1 "<built-in>"
#undef __ARM_FEATURE_BF16_VECTOR_ARITHMETIC
# 1 "<built-in>"
#undef __ARM_BF16_FORMAT_ALTERNATIVE
# 1 "<built-in>"
#define __GXX_TYPEINFO_EQUALITY_INLINE 0
#define __ELF__ 1
# 1 "<command-line>"
#define __USES_INITFINI__ 1
#define STM32 1
#define STM32F4 1
#define STM32F407xx 1
#define STM32F407VGTx 1
#define STM32F407G_DISC1 1
#define USE_HAL_DRIVER 1
# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/bignum_mod_raw.c"







# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h" 1
# 12 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
#define MBEDTLS_LIBRARY_COMMON_H 

# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h" 1
# 15 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h"
#define MBEDTLS_BUILD_INFO_H 
# 27 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h"
#define MBEDTLS_VERSION_MAJOR 3
#define MBEDTLS_VERSION_MINOR 6
#define MBEDTLS_VERSION_PATCH 4






#define MBEDTLS_VERSION_NUMBER 0x03060400
#define MBEDTLS_VERSION_STRING "3.6.4"
#define MBEDTLS_VERSION_STRING_FULL "Mbed TLS 3.6.4"
# 50 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h"
#define MBEDTLS_ARCH_IS_ARM32 
# 89 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h"
#define MBEDTLS_COMPILER_IS_GCC 
#define MBEDTLS_GCC_VERSION (__GNUC__ * 10000 + __GNUC_MINOR__ * 100 + __GNUC_PATCHLEVEL__)
# 113 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h"
# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h" 1
# 52 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_HAVE_ASM 
# 131 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_HAVE_TIME 
# 152 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_HAVE_TIME_DATE 
# 208 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PLATFORM_MEMORY 
# 227 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PLATFORM_NO_STD_FUNCTIONS 
# 653 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_CIPHER_MODE_CBC 






#define MBEDTLS_CIPHER_MODE_CFB 






#define MBEDTLS_CIPHER_MODE_CTR 






#define MBEDTLS_CIPHER_MODE_OFB 






#define MBEDTLS_CIPHER_MODE_XTS 
# 726 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_CIPHER_PADDING_PKCS7 
#define MBEDTLS_CIPHER_PADDING_ONE_AND_ZEROS 
#define MBEDTLS_CIPHER_PADDING_ZEROS_AND_LEN 
#define MBEDTLS_CIPHER_PADDING_ZEROS 
# 760 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ECP_DP_SECP192R1_ENABLED 
#define MBEDTLS_ECP_DP_SECP224R1_ENABLED 
#define MBEDTLS_ECP_DP_SECP256R1_ENABLED 
#define MBEDTLS_ECP_DP_SECP384R1_ENABLED 
#define MBEDTLS_ECP_DP_SECP521R1_ENABLED 
#define MBEDTLS_ECP_DP_SECP192K1_ENABLED 
#define MBEDTLS_ECP_DP_SECP224K1_ENABLED 
#define MBEDTLS_ECP_DP_SECP256K1_ENABLED 
#define MBEDTLS_ECP_DP_BP256R1_ENABLED 
#define MBEDTLS_ECP_DP_BP384R1_ENABLED 
#define MBEDTLS_ECP_DP_BP512R1_ENABLED 

#define MBEDTLS_ECP_DP_CURVE25519_ENABLED 
#define MBEDTLS_ECP_DP_CURVE448_ENABLED 
# 784 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ECP_NIST_OPTIM 
# 861 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ECDSA_DETERMINISTIC 
# 881 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_KEY_EXCHANGE_PSK_ENABLED 
# 910 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_KEY_EXCHANGE_DHE_PSK_ENABLED 
# 928 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED 
# 951 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_KEY_EXCHANGE_RSA_PSK_ENABLED 
# 976 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_KEY_EXCHANGE_RSA_ENABLED 
# 1008 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_KEY_EXCHANGE_DHE_RSA_ENABLED 
# 1033 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_KEY_EXCHANGE_ECDHE_RSA_ENABLED 
# 1057 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA_ENABLED 
# 1081 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA_ENABLED 
# 1105 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_KEY_EXCHANGE_ECDH_RSA_ENABLED 
# 1142 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PK_PARSE_EC_EXTENDED 
# 1155 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PK_PARSE_EC_COMPRESSED 
# 1170 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ERROR_STRERROR_DUMMY 
# 1179 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_GENPRIME 






#define MBEDTLS_FS_IO 
# 1299 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PK_RSA_ALT_SUPPORT 
# 1310 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PKCS1_V15 
# 1324 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PKCS1_V21 
# 1432 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PSA_KEY_STORE_DYNAMIC 
# 1524 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SELF_TEST 
# 1564 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_ALL_ALERT_MESSAGES 
# 1588 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_DTLS_CONNECTION_ID 
# 1611 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_DTLS_CONNECTION_ID_COMPAT 0
# 1692 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_CONTEXT_SERIALIZATION 
# 1724 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_ENCRYPT_THEN_MAC 
# 1740 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_EXTENDED_MASTER_SECRET 
# 1764 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_KEEP_PEER_CERTIFICATE 
# 1778 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_KEYING_MATERIAL_EXPORT 
# 1802 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_RENEGOTIATION 
# 1811 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_MAX_FRAGMENT_LENGTH 
# 1841 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_PROTO_TLS1_2 
# 1871 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_PROTO_TLS1_3 
# 1893 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE 
# 1905 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_TLS1_3_KEY_EXCHANGE_MODE_PSK_ENABLED 
# 1923 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_TLS1_3_KEY_EXCHANGE_MODE_EPHEMERAL_ENABLED 
# 1937 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_TLS1_3_KEY_EXCHANGE_MODE_PSK_EPHEMERAL_ENABLED 
# 1968 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_PROTO_DTLS 
# 1977 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_ALPN 
# 1992 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_DTLS_ANTI_REPLAY 
# 2010 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_DTLS_HELLO_VERIFY 
# 2057 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_DTLS_CLIENT_PORT_REUSE 
# 2071 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_SESSION_TICKETS 
# 2082 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_SERVER_NAME_INDICATION 
# 2249 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_VERSION_FEATURES 
# 2293 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_X509_RSASSA_PSS_SUPPORT 
# 2333 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_AESNI_C 
# 2359 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_AESCE_C 
# 2434 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_AES_C 
# 2448 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ASN1_PARSE_C 
# 2462 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ASN1_WRITE_C 
# 2474 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_BASE64_C 
# 2516 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_BIGNUM_C 
# 2571 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_CAMELLIA_C 
# 2623 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ARIA_C 
# 2638 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_CCM_C 
# 2647 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_CHACHA20_C 
# 2658 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_CHACHAPOLY_C 
# 2682 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_CIPHER_C 
# 2700 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_CMAC_C 
# 2731 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_CTR_DRBG_C 
# 2746 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_DEBUG_C 
# 2762 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_DES_C 
# 2784 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_DHM_C 
# 2802 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ECDH_C 
# 2819 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ECDSA_C 
# 2841 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ECJPAKE_C 
# 2855 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ECP_C 
# 2869 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ENTROPY_C 
# 2881 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_ERROR_C 
# 2896 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_GCM_C 
# 2927 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_HKDF_C 
# 2941 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_HMAC_DRBG_C 
# 2955 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_LMS_C 
# 2980 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_NIST_KW_C 
# 3013 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_MD_C 
# 3034 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_MD5_C 
# 3050 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_MEMORY_BUFFER_ALLOC_C 
# 3069 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_NET_C 
# 3092 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_OID_C 
# 3106 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PADLOCK_C 
# 3128 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PEM_PARSE_C 
# 3144 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PEM_WRITE_C 
# 3162 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PK_C 
# 3177 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PK_PARSE_C 
# 3191 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PK_WRITE_C 
# 3207 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PKCS5_C 
# 3223 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PKCS7_C 
# 3242 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PKCS12_C 
# 3262 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PLATFORM_C 
# 3272 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_POLY1305_C 
# 3299 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PSA_CRYPTO_C 
# 3331 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PSA_CRYPTO_STORAGE_C 
# 3343 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_PSA_ITS_FILE_C 
# 3374 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_RIPEMD160_C 
# 3394 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_RSA_C 
# 3413 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SHA1_C 
# 3426 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SHA224_C 
# 3443 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SHA256_C 
# 3541 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SHA384_C 
# 3556 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SHA512_C 
# 3567 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SHA3_C 
# 3635 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_CACHE_C 
# 3645 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_COOKIE_C 
# 3658 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_TICKET_C 
# 3672 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_CLI_C 
# 3686 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_SRV_C 
# 3702 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_SSL_TLS_C 
# 3776 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_TIMING_C 
# 3787 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_VERSION_C 
# 3807 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_X509_USE_C 
# 3823 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_X509_CRT_PARSE_C 
# 3837 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_X509_CRL_PARSE_C 
# 3851 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_X509_CSR_PARSE_C 
# 3868 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_X509_CREATE_C 
# 3881 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_X509_CRT_WRITE_C 
# 3894 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/mbedtls_config.h"
#define MBEDTLS_X509_CSR_WRITE_C 
# 114 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h" 2
# 149 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h"
#define MBEDTLS_CONFIG_FILES_READ 
# 163 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h"
#define MBEDTLS_MD_C 
# 176 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h"
# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h" 1
# 19 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h"
#define MBEDTLS_CONFIG_PSA_H 

# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_legacy.h" 1
# 20 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_legacy.h"
#define MBEDTLS_PSA_CRYPTO_LEGACY_H 
# 22 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h" 2

# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_config_synonyms.h" 1
# 17 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_config_synonyms.h"
#define PSA_CRYPTO_ADJUST_CONFIG_SYNONYMS_H 
# 24 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h" 2

# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_config_dependencies.h" 1
# 19 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_config_dependencies.h"
#define PSA_CRYPTO_ADJUST_CONFIG_DEPENDENCIES_H 
# 26 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h" 2
# 45 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h"
# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_psa_superset_legacy.h" 1
# 20 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_psa_superset_legacy.h"
#define MBEDTLS_CONFIG_ADJUST_PSA_SUPERSET_LEGACY_H 
# 37 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_psa_superset_legacy.h"
#define PSA_WANT_ALG_MD5 1



#define PSA_WANT_ALG_RIPEMD160 1



#define PSA_WANT_ALG_SHA_1 1



#define PSA_WANT_ALG_SHA_224 1



#define PSA_WANT_ALG_SHA_256 1



#define PSA_WANT_ALG_SHA_384 1



#define PSA_WANT_ALG_SHA_512 1



#define PSA_WANT_ALG_SHA3_224 1
#define PSA_WANT_ALG_SHA3_256 1
#define PSA_WANT_ALG_SHA3_384 1
#define PSA_WANT_ALG_SHA3_512 1






#define PSA_WANT_ECC_BRAINPOOL_P_R1_256 1





#define PSA_WANT_ECC_BRAINPOOL_P_R1_384 1





#define PSA_WANT_ECC_BRAINPOOL_P_R1_512 1





#define PSA_WANT_ECC_MONTGOMERY_255 1





#define PSA_WANT_ECC_MONTGOMERY_448 1





#define PSA_WANT_ECC_SECP_R1_192 1





#define PSA_WANT_ECC_SECP_R1_224 1





#define PSA_WANT_ECC_SECP_R1_256 1





#define PSA_WANT_ECC_SECP_R1_384 1





#define PSA_WANT_ECC_SECP_R1_521 1





#define PSA_WANT_ECC_SECP_K1_192 1





#define PSA_WANT_ECC_SECP_K1_256 1
# 46 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h" 2
# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_from_psa.h" 1
# 19 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_from_psa.h"
#define MBEDTLS_CONFIG_ADJUST_LEGACY_FROM_PSA_H 
# 73 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_from_psa.h"
#define MBEDTLS_PSA_ECC_ACCEL_INCOMPLETE_CURVES 
#define MBEDTLS_PSA_ECC_ACCEL_INCOMPLETE_WEIERSTRASS_CURVES 




#define MBEDTLS_PSA_ECC_ACCEL_INCOMPLETE_CURVES 
# 132 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_from_psa.h"
#define MBEDTLS_PSA_BUILTIN_ECC_BRAINPOOL_P_R1_256 1
#define MBEDTLS_ECP_DP_BP256R1_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_BRAINPOOL_P_R1_384 1
#define MBEDTLS_ECP_DP_BP384R1_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_BRAINPOOL_P_R1_512 1
#define MBEDTLS_ECP_DP_BP512R1_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_MONTGOMERY_255 1
#define MBEDTLS_ECP_DP_CURVE25519_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_MONTGOMERY_448 1
#define MBEDTLS_ECP_DP_CURVE448_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_SECP_R1_192 1
#define MBEDTLS_ECP_DP_SECP192R1_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_SECP_R1_224 1
#define MBEDTLS_ECP_DP_SECP224R1_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_SECP_R1_256 1
#define MBEDTLS_ECP_DP_SECP256R1_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_SECP_R1_384 1
#define MBEDTLS_ECP_DP_SECP384R1_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_SECP_R1_521 1
#define MBEDTLS_ECP_DP_SECP521R1_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_SECP_K1_192 1
#define MBEDTLS_ECP_DP_SECP192K1_ENABLED 







#define MBEDTLS_PSA_BUILTIN_ECC_SECP_K1_256 1
#define MBEDTLS_ECP_DP_SECP256K1_ENABLED 
# 530 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_from_psa.h"
#define MBEDTLS_PSA_BUILTIN_ALG_MD5 1
#define MBEDTLS_MD5_C 



#define MBEDTLS_PSA_BUILTIN_ALG_RIPEMD160 1
#define MBEDTLS_RIPEMD160_C 
# 580 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_from_psa.h"
#define MBEDTLS_PSA_BUILTIN_ALG_SHA_1 1
#define MBEDTLS_SHA1_C 



#define MBEDTLS_PSA_BUILTIN_ALG_SHA_224 1
#define MBEDTLS_SHA224_C 



#define MBEDTLS_PSA_BUILTIN_ALG_SHA_256 1
#define MBEDTLS_SHA256_C 



#define MBEDTLS_PSA_BUILTIN_ALG_SHA_384 1
#define MBEDTLS_SHA384_C 



#define MBEDTLS_PSA_BUILTIN_ALG_SHA_512 1
#define MBEDTLS_SHA512_C 



#define MBEDTLS_PSA_BUILTIN_ALG_SHA3_224 1
#define MBEDTLS_SHA3_C 



#define MBEDTLS_PSA_BUILTIN_ALG_SHA3_256 1
#define MBEDTLS_SHA3_C 



#define MBEDTLS_PSA_BUILTIN_ALG_SHA3_384 1
#define MBEDTLS_SHA3_C 



#define MBEDTLS_PSA_BUILTIN_ALG_SHA3_512 1
#define MBEDTLS_SHA3_C 
# 47 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h" 2
# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_psa_from_legacy.h" 1
# 21 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_psa_from_legacy.h"
#define MBEDTLS_CONFIG_ADJUST_PSA_FROM_LEGACY_H 
# 37 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_psa_from_legacy.h"
#define MBEDTLS_PSA_BUILTIN_ALG_CCM 1
#define PSA_WANT_ALG_CCM 1

#define MBEDTLS_PSA_BUILTIN_ALG_CCM_STAR_NO_TAG 1
#define PSA_WANT_ALG_CCM_STAR_NO_TAG 1




#define MBEDTLS_PSA_BUILTIN_ALG_CMAC 1
#define PSA_WANT_ALG_CMAC 1



#define MBEDTLS_PSA_BUILTIN_ALG_ECDH 1
#define PSA_WANT_ALG_ECDH 1



#define MBEDTLS_PSA_BUILTIN_ALG_ECDSA 1
#define PSA_WANT_ALG_ECDSA 1
#define PSA_WANT_ALG_ECDSA_ANY 1



#define MBEDTLS_PSA_BUILTIN_ALG_DETERMINISTIC_ECDSA 1
#define PSA_WANT_ALG_DETERMINISTIC_ECDSA 1





#define PSA_WANT_KEY_TYPE_ECC_KEY_PAIR_BASIC 1
#define PSA_WANT_KEY_TYPE_ECC_KEY_PAIR_IMPORT 1
#define PSA_WANT_KEY_TYPE_ECC_KEY_PAIR_EXPORT 1
#define PSA_WANT_KEY_TYPE_ECC_KEY_PAIR_GENERATE 1



#define PSA_WANT_KEY_TYPE_ECC_KEY_PAIR_DERIVE 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_ECC_KEY_PAIR_BASIC 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_ECC_KEY_PAIR_IMPORT 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_ECC_KEY_PAIR_EXPORT 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_ECC_KEY_PAIR_GENERATE 1

#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_ECC_KEY_PAIR_DERIVE 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_ECC_PUBLIC_KEY 1
#define PSA_WANT_KEY_TYPE_ECC_PUBLIC_KEY 1



#define PSA_WANT_KEY_TYPE_DH_KEY_PAIR_BASIC 1
#define PSA_WANT_KEY_TYPE_DH_KEY_PAIR_IMPORT 1
#define PSA_WANT_KEY_TYPE_DH_KEY_PAIR_EXPORT 1
#define PSA_WANT_KEY_TYPE_DH_KEY_PAIR_GENERATE 1
#define PSA_WANT_KEY_TYPE_DH_PUBLIC_KEY 1
#define PSA_WANT_ALG_FFDH 1
#define PSA_WANT_DH_RFC7919_2048 1
#define PSA_WANT_DH_RFC7919_3072 1
#define PSA_WANT_DH_RFC7919_4096 1
#define PSA_WANT_DH_RFC7919_6144 1
#define PSA_WANT_DH_RFC7919_8192 1
#define MBEDTLS_PSA_BUILTIN_ALG_FFDH 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_DH_KEY_PAIR_BASIC 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_DH_KEY_PAIR_IMPORT 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_DH_KEY_PAIR_EXPORT 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_DH_KEY_PAIR_GENERATE 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_DH_PUBLIC_KEY 1
#define MBEDTLS_PSA_BUILTIN_DH_RFC7919_2048 1
#define MBEDTLS_PSA_BUILTIN_DH_RFC7919_3072 1
#define MBEDTLS_PSA_BUILTIN_DH_RFC7919_4096 1
#define MBEDTLS_PSA_BUILTIN_DH_RFC7919_6144 1
#define MBEDTLS_PSA_BUILTIN_DH_RFC7919_8192 1



#define MBEDTLS_PSA_BUILTIN_ALG_GCM 1
#define PSA_WANT_ALG_GCM 1







#define MBEDTLS_PSA_BUILTIN_ALG_HMAC 1
#define PSA_WANT_ALG_HMAC 1
#define MBEDTLS_PSA_BUILTIN_ALG_HKDF 1
#define PSA_WANT_ALG_HKDF 1
#define MBEDTLS_PSA_BUILTIN_ALG_HKDF_EXTRACT 1
#define PSA_WANT_ALG_HKDF_EXTRACT 1
#define MBEDTLS_PSA_BUILTIN_ALG_HKDF_EXPAND 1
#define PSA_WANT_ALG_HKDF_EXPAND 1


#define MBEDTLS_PSA_BUILTIN_ALG_HMAC 1
#define PSA_WANT_ALG_HMAC 1
#define PSA_WANT_KEY_TYPE_HMAC 1


#define MBEDTLS_PSA_BUILTIN_ALG_TLS12_PRF 1
#define PSA_WANT_ALG_TLS12_PRF 1
#define MBEDTLS_PSA_BUILTIN_ALG_TLS12_PSK_TO_MS 1
#define PSA_WANT_ALG_TLS12_PSK_TO_MS 1



#define MBEDTLS_PSA_BUILTIN_ALG_MD5 1
#define PSA_WANT_ALG_MD5 1



#define MBEDTLS_PSA_BUILTIN_PAKE 1
#define MBEDTLS_PSA_BUILTIN_ALG_JPAKE 1
#define PSA_WANT_ALG_JPAKE 1



#define MBEDTLS_PSA_BUILTIN_ALG_RIPEMD160 1
#define PSA_WANT_ALG_RIPEMD160 1




#define MBEDTLS_PSA_BUILTIN_ALG_RSA_PKCS1V15_CRYPT 1
#define PSA_WANT_ALG_RSA_PKCS1V15_CRYPT 1
#define MBEDTLS_PSA_BUILTIN_ALG_RSA_PKCS1V15_SIGN 1
#define PSA_WANT_ALG_RSA_PKCS1V15_SIGN 1
#define PSA_WANT_ALG_RSA_PKCS1V15_SIGN_RAW 1


#define MBEDTLS_PSA_BUILTIN_ALG_RSA_OAEP 1
#define PSA_WANT_ALG_RSA_OAEP 1
#define MBEDTLS_PSA_BUILTIN_ALG_RSA_PSS 1
#define PSA_WANT_ALG_RSA_PSS 1


#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_RSA_KEY_PAIR_GENERATE 1
#define PSA_WANT_KEY_TYPE_RSA_KEY_PAIR_GENERATE 1

#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_RSA_KEY_PAIR_BASIC 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_RSA_KEY_PAIR_IMPORT 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_RSA_KEY_PAIR_EXPORT 1
#define PSA_WANT_KEY_TYPE_RSA_KEY_PAIR_BASIC 1
#define PSA_WANT_KEY_TYPE_RSA_KEY_PAIR_IMPORT 1
#define PSA_WANT_KEY_TYPE_RSA_KEY_PAIR_EXPORT 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_RSA_PUBLIC_KEY 1
#define PSA_WANT_KEY_TYPE_RSA_PUBLIC_KEY 1



#define MBEDTLS_PSA_BUILTIN_ALG_SHA_1 1
#define PSA_WANT_ALG_SHA_1 1



#define MBEDTLS_PSA_BUILTIN_ALG_SHA_224 1
#define PSA_WANT_ALG_SHA_224 1



#define MBEDTLS_PSA_BUILTIN_ALG_SHA_256 1
#define PSA_WANT_ALG_SHA_256 1



#define MBEDTLS_PSA_BUILTIN_ALG_SHA_384 1
#define PSA_WANT_ALG_SHA_384 1



#define MBEDTLS_PSA_BUILTIN_ALG_SHA_512 1
#define PSA_WANT_ALG_SHA_512 1



#define MBEDTLS_PSA_BUILTIN_ALG_SHA3_224 1
#define MBEDTLS_PSA_BUILTIN_ALG_SHA3_256 1
#define MBEDTLS_PSA_BUILTIN_ALG_SHA3_384 1
#define MBEDTLS_PSA_BUILTIN_ALG_SHA3_512 1
#define PSA_WANT_ALG_SHA3_224 1
#define PSA_WANT_ALG_SHA3_256 1
#define PSA_WANT_ALG_SHA3_384 1
#define PSA_WANT_ALG_SHA3_512 1



#define PSA_WANT_KEY_TYPE_AES 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_AES 1



#define PSA_WANT_KEY_TYPE_ARIA 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_ARIA 1



#define PSA_WANT_KEY_TYPE_CAMELLIA 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_CAMELLIA 1



#define PSA_WANT_KEY_TYPE_DES 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_DES 1



#define MBEDTLS_PSA_BUILTIN_ALG_TLS12_ECJPAKE_TO_PMS 1
#define PSA_WANT_ALG_TLS12_ECJPAKE_TO_PMS 1



#define PSA_WANT_KEY_TYPE_CHACHA20 1
#define MBEDTLS_PSA_BUILTIN_KEY_TYPE_CHACHA20 1


#define PSA_WANT_ALG_STREAM_CIPHER 1
#define MBEDTLS_PSA_BUILTIN_ALG_STREAM_CIPHER 1


#define PSA_WANT_ALG_CHACHA20_POLY1305 1
#define MBEDTLS_PSA_BUILTIN_ALG_CHACHA20_POLY1305 1




#define MBEDTLS_PSA_BUILTIN_ALG_CBC_NO_PADDING 1
#define PSA_WANT_ALG_CBC_NO_PADDING 1

#define MBEDTLS_PSA_BUILTIN_ALG_CBC_PKCS7 1
#define PSA_WANT_ALG_CBC_PKCS7 1






#define MBEDTLS_PSA_BUILTIN_ALG_ECB_NO_PADDING 1
#define PSA_WANT_ALG_ECB_NO_PADDING 1



#define MBEDTLS_PSA_BUILTIN_ALG_CFB 1
#define PSA_WANT_ALG_CFB 1



#define MBEDTLS_PSA_BUILTIN_ALG_CTR 1
#define PSA_WANT_ALG_CTR 1



#define MBEDTLS_PSA_BUILTIN_ALG_OFB 1
#define PSA_WANT_ALG_OFB 1



#define MBEDTLS_PSA_BUILTIN_ECC_BRAINPOOL_P_R1_256 1
#define PSA_WANT_ECC_BRAINPOOL_P_R1_256 1



#define MBEDTLS_PSA_BUILTIN_ECC_BRAINPOOL_P_R1_384 1
#define PSA_WANT_ECC_BRAINPOOL_P_R1_384 1



#define MBEDTLS_PSA_BUILTIN_ECC_BRAINPOOL_P_R1_512 1
#define PSA_WANT_ECC_BRAINPOOL_P_R1_512 1



#define MBEDTLS_PSA_BUILTIN_ECC_MONTGOMERY_255 1
#define PSA_WANT_ECC_MONTGOMERY_255 1



#define MBEDTLS_PSA_BUILTIN_ECC_MONTGOMERY_448 1
#define PSA_WANT_ECC_MONTGOMERY_448 1



#define MBEDTLS_PSA_BUILTIN_ECC_SECP_R1_192 1
#define PSA_WANT_ECC_SECP_R1_192 1



#define MBEDTLS_PSA_BUILTIN_ECC_SECP_R1_224 1
#define PSA_WANT_ECC_SECP_R1_224 1



#define MBEDTLS_PSA_BUILTIN_ECC_SECP_R1_256 1
#define PSA_WANT_ECC_SECP_R1_256 1



#define MBEDTLS_PSA_BUILTIN_ECC_SECP_R1_384 1
#define PSA_WANT_ECC_SECP_R1_384 1



#define MBEDTLS_PSA_BUILTIN_ECC_SECP_R1_521 1
#define PSA_WANT_ECC_SECP_R1_521 1



#define MBEDTLS_PSA_BUILTIN_ECC_SECP_K1_192 1
#define PSA_WANT_ECC_SECP_K1_192 1
# 355 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_psa_from_legacy.h"
#define MBEDTLS_PSA_BUILTIN_ECC_SECP_K1_256 1
#define PSA_WANT_ECC_SECP_K1_256 1
# 48 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h" 2



# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_config_key_pair_types.h" 1
# 22 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_config_key_pair_types.h"
#define PSA_CRYPTO_ADJUST_KEYPAIR_TYPES_H 
# 40 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_config_key_pair_types.h"
#define PSA_WANT_KEY_TYPE_ECC_KEY_PAIR_BASIC 1






#define PSA_WANT_KEY_TYPE_RSA_KEY_PAIR_BASIC 1






#define PSA_WANT_KEY_TYPE_DH_KEY_PAIR_BASIC 1







#define PSA_WANT_KEY_TYPE_ECC_PUBLIC_KEY 1



#define PSA_WANT_KEY_TYPE_RSA_PUBLIC_KEY 1



#define PSA_WANT_KEY_TYPE_DH_PUBLIC_KEY 1
# 87 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_config_key_pair_types.h"
#define PSA_WANT_KEY_TYPE_ECC_KEY_PAIR_IMPORT 1
#define PSA_WANT_KEY_TYPE_ECC_KEY_PAIR_EXPORT 1



#define PSA_WANT_KEY_TYPE_RSA_KEY_PAIR_IMPORT 1
#define PSA_WANT_KEY_TYPE_RSA_KEY_PAIR_EXPORT 1



#define PSA_WANT_KEY_TYPE_DH_KEY_PAIR_IMPORT 1
#define PSA_WANT_KEY_TYPE_DH_KEY_PAIR_EXPORT 1
# 52 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h" 2




#define PSA_WANT_ALG_SOME_PAKE 1


# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_auto_enabled.h" 1
# 16 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_auto_enabled.h"
#define PSA_CRYPTO_ADJUST_AUTO_ENABLED_H 
# 26 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/../psa/crypto_adjust_auto_enabled.h"
#define PSA_WANT_KEY_TYPE_DERIVE 1
#define PSA_WANT_KEY_TYPE_PASSWORD 1
#define PSA_WANT_KEY_TYPE_PASSWORD_HASH 1
#define PSA_WANT_KEY_TYPE_RAW_DATA 1
# 60 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_psa.h" 2
# 177 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h" 2


# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h" 1
# 25 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_CONFIG_ADJUST_LEGACY_CRYPTO_H 
# 55 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_PSA_CRYPTO_CLIENT 
# 70 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_CIPHER_C 






#define MBEDTLS_MD_LIGHT 
# 92 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_MD_LIGHT 
# 231 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_MD_CAN_MD5 
#define MBEDTLS_MD_SOME_LEGACY 


#define MBEDTLS_MD_CAN_SHA1 
#define MBEDTLS_MD_SOME_LEGACY 


#define MBEDTLS_MD_CAN_SHA224 
#define MBEDTLS_MD_SOME_LEGACY 


#define MBEDTLS_MD_CAN_SHA256 
#define MBEDTLS_MD_SOME_LEGACY 


#define MBEDTLS_MD_CAN_SHA384 
#define MBEDTLS_MD_SOME_LEGACY 


#define MBEDTLS_MD_CAN_SHA512 
#define MBEDTLS_MD_SOME_LEGACY 


#define MBEDTLS_MD_CAN_SHA3_224 
#define MBEDTLS_MD_CAN_SHA3_256 
#define MBEDTLS_MD_CAN_SHA3_384 
#define MBEDTLS_MD_CAN_SHA3_512 
#define MBEDTLS_MD_SOME_LEGACY 


#define MBEDTLS_MD_CAN_RIPEMD160 
#define MBEDTLS_MD_SOME_LEGACY 
# 299 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_BLOCK_CIPHER_AES_VIA_LEGACY 


#define MBEDTLS_BLOCK_CIPHER_ARIA_VIA_LEGACY 


#define MBEDTLS_BLOCK_CIPHER_CAMELLIA_VIA_LEGACY 






#define MBEDTLS_BLOCK_CIPHER_CAN_AES 



#define MBEDTLS_BLOCK_CIPHER_CAN_ARIA 



#define MBEDTLS_BLOCK_CIPHER_CAN_CAMELLIA 
# 337 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_CCM_GCM_CAN_AES 




#define MBEDTLS_CCM_GCM_CAN_ARIA 




#define MBEDTLS_CCM_GCM_CAN_CAMELLIA 
# 370 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_ECP_LIGHT 






#define MBEDTLS_ASN1_PARSE_C 
#define MBEDTLS_ASN1_WRITE_C 
# 387 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_PK_PARSE_EC_COMPRESSED 






#define MBEDTLS_CAN_ECDH 
# 403 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_PK_CAN_ECDSA_SIGN 
#define MBEDTLS_PK_CAN_ECDSA_VERIFY 
# 418 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_PK_CAN_ECDSA_SOME 




#define MBEDTLS_ECP_HAVE_SECP521R1 


#define MBEDTLS_ECP_HAVE_BP512R1 


#define MBEDTLS_ECP_HAVE_CURVE448 


#define MBEDTLS_ECP_HAVE_BP384R1 


#define MBEDTLS_ECP_HAVE_SECP384R1 


#define MBEDTLS_ECP_HAVE_BP256R1 


#define MBEDTLS_ECP_HAVE_SECP256K1 


#define MBEDTLS_ECP_HAVE_SECP256R1 


#define MBEDTLS_ECP_HAVE_CURVE25519 


#define MBEDTLS_ECP_HAVE_SECP224K1 


#define MBEDTLS_ECP_HAVE_SECP224R1 


#define MBEDTLS_ECP_HAVE_SECP192K1 


#define MBEDTLS_ECP_HAVE_SECP192R1 







#define MBEDTLS_PK_HAVE_ECC_KEYS 







#define MBEDTLS_CIPHER_PADDING_PKCS7 
# 492 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_legacy_crypto.h"
#define MBEDTLS_PSA_UTIL_HAVE_ECDSA 





#define MBEDTLS_SSL_HAVE_AES 



#define MBEDTLS_SSL_HAVE_ARIA 



#define MBEDTLS_SSL_HAVE_CAMELLIA 





#define MBEDTLS_SSL_HAVE_CBC 




#define MBEDTLS_SSL_HAVE_GCM 




#define MBEDTLS_SSL_HAVE_CCM 




#define MBEDTLS_SSL_HAVE_CHACHAPOLY 




#define MBEDTLS_SSL_HAVE_AEAD 
# 180 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h" 2

# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_x509.h" 1
# 25 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_x509.h"
#define MBEDTLS_CONFIG_ADJUST_X509_H 
# 182 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h" 2

# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_ssl.h" 1
# 25 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_ssl.h"
#define MBEDTLS_CONFIG_ADJUST_SSL_H 
# 88 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/config_adjust_ssl.h"
#define MBEDTLS_SSL_TLS1_2_SOME_ECC 
# 184 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h" 2






#define MBEDTLS_CONFIG_IS_FINALIZED 

# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/check_config.h" 1
# 19 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/check_config.h"
#define MBEDTLS_CHECK_CONFIG_H 
# 33 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/check_config.h"
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include-fixed/limits.h" 1 3 4
# 30 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include-fixed/limits.h" 3 4
#define _GCC_LIMITS_H_ 



# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include-fixed/syslimits.h" 1 3 4





#define _GCC_NEXT_LIMITS_H 
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include-fixed/limits.h" 1 3 4
# 195 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include-fixed/limits.h" 3 4
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/limits.h" 1 3 4

#define _LIBC_LIMITS_H_ 1

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/newlib.h" 1 3 4







#define __NEWLIB_H__ 1





# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/_newlib_version.h" 1 3 4



#define _NEWLIB_VERSION_H__ 1

#define _NEWLIB_VERSION "4.1.0"
#define __NEWLIB__ 4
#define __NEWLIB_MINOR__ 1
#define __NEWLIB_PATCHLEVEL__ 0
# 15 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/newlib.h" 2 3 4



#define _WANT_IO_C99_FORMATS 1


#define _WANT_IO_LONG_LONG 1


#define _WANT_REGISTER_FINI 1
# 37 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/newlib.h" 3 4
#define _REENT_CHECK_VERIFY 1





#define _MB_LEN_MAX 1
# 53 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/newlib.h" 3 4
#define HAVE_INITFINI_ARRAY 1



#define _ATEXIT_DYNAMIC_ALLOC 1


#define _HAVE_LONG_DOUBLE 1


#define _HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1


#define _LDBL_EQ_DBL 1


#define _FVWRITE_IN_STREAMIO 1


#define _FSEEK_OPTIMIZATION 1


#define _WIDE_ORIENT 1


#define _UNBUF_STREAM_OPT 1
# 95 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/newlib.h" 3 4
#define _RETARGETABLE_LOCKING 1
# 5 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/limits.h" 2 3 4
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 1 3 4
# 43 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define _SYS_CDEFS_H_ 

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 1 3 4





#define _MACHINE__DEFAULT_TYPES_H 

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/features.h" 1 3 4
# 22 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/features.h" 3 4
#define _SYS_FEATURES_H 
# 33 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/features.h" 3 4
#define __GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))






#define __GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)
# 131 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/features.h" 3 4
#undef _DEFAULT_SOURCE
#define _DEFAULT_SOURCE 1



#undef _POSIX_SOURCE
#define _POSIX_SOURCE 1
#undef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
# 158 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/features.h" 3 4
#undef _ATFILE_SOURCE
#define _ATFILE_SOURCE 1
# 247 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/features.h" 3 4
#define __ATFILE_VISIBLE 1





#define __BSD_VISIBLE 1







#define __GNU_VISIBLE 0







#define __ISO_C_VISIBLE 1999







#define __LARGEFILE_VISIBLE 0



#define __MISC_VISIBLE 1





#define __POSIX_VISIBLE 200809
# 303 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/features.h" 3 4
#define __SVID_VISIBLE 1
# 319 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/features.h" 3 4
#define __XSI_VISIBLE 0
# 330 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/features.h" 3 4
#define __SSP_FORTIFY_LEVEL 0
# 9 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 2 3 4






#define __EXP(x) __ ##x ##__
# 26 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 3 4
#define __have_longlong64 1






#define __have_long32 1








# 41 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;



#define ___int8_t_defined 1







typedef short int __int16_t;

typedef short unsigned int __uint16_t;



#define ___int16_t_defined 1
# 77 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;



#define ___int32_t_defined 1
# 103 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;



#define ___int64_t_defined 1
# 134 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;



#define ___int_least8_t_defined 1
# 160 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;



#define ___int_least16_t_defined 1
# 182 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;



#define ___int_least32_t_defined 1
# 200 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;



#define ___int_least64_t_defined 1







typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 244 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h" 3 4
#undef __EXP
# 46 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 2 3 4

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 1 3 4
# 39 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#define _STDDEF_H 
#define _STDDEF_H_ 

#define _ANSI_STDDEF_H 
# 131 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#define _PTRDIFF_T 
#define _T_PTRDIFF_ 
#define _T_PTRDIFF 
#define __PTRDIFF_T 
#define _PTRDIFF_T_ 
#define _BSD_PTRDIFF_T_ 
#define ___int_ptrdiff_t_h 
#define _GCC_PTRDIFF_T 
#define _PTRDIFF_T_DECLARED 



typedef int ptrdiff_t;
# 155 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_ptrdiff_t
# 181 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#define __size_t__ 
#define __SIZE_T__ 
#define _SIZE_T 
#define _SYS_SIZE_T_H 
#define _T_SIZE_ 
#define _T_SIZE 
#define __SIZE_T 
#define _SIZE_T_ 
#define _BSD_SIZE_T_ 
#define _SIZE_T_DEFINED_ 
#define _SIZE_T_DEFINED 
#define _BSD_SIZE_T_DEFINED_ 
#define _SIZE_T_DECLARED 
#define ___int_size_t_h 
#define _GCC_SIZE_T 
#define _SIZET_ 






#define __size_t 





typedef unsigned int size_t;
# 231 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_size_t
# 260 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#define __wchar_t__ 
#define __WCHAR_T__ 
#define _WCHAR_T 
#define _T_WCHAR_ 
#define _T_WCHAR 
#define __WCHAR_T 
#define _WCHAR_T_ 
#define _BSD_WCHAR_T_ 
#define _WCHAR_T_DEFINED_ 
#define _WCHAR_T_DEFINED 
#define _WCHAR_T_H 
#define ___int_wchar_t_h 
#define __INT_WCHAR_T_H 
#define _GCC_WCHAR_T 
#define _WCHAR_T_DECLARED 
# 287 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef _BSD_WCHAR_T_
# 321 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 340 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_wchar_t
# 390 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 48 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 2 3 4

#define __PMT(args) args
#define __DOTS , ...
#define __THROW 


#define __ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname


#define __ptr_t void *
#define __long_double_t long double

#define __attribute_malloc__ 
#define __attribute_pure__ 
#define __attribute_format_strfmon__(a,b) 
#define __flexarr [0]


#define __bounded 
#define __unbounded 
#define __ptrvalue 
# 78 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __has_extension __has_feature


#define __has_feature(x) 0
# 94 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __BEGIN_DECLS 
#define __END_DECLS 
# 107 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __GNUCLIKE_ASM 3
#define __GNUCLIKE_MATH_BUILTIN_CONSTANTS 



#define __GNUCLIKE___TYPEOF 1
#define __GNUCLIKE___OFFSETOF 1
#define __GNUCLIKE___SECTION 1


#define __GNUCLIKE_CTOR_SECTION_HANDLING 1


#define __GNUCLIKE_BUILTIN_CONSTANT_P 1






#define __GNUCLIKE_BUILTIN_VARARGS 1
#define __GNUCLIKE_BUILTIN_STDARG 1
#define __GNUCLIKE_BUILTIN_VAALIST 1



#define __GNUC_VA_LIST_COMPATIBILITY 1






#define __compiler_membar() __asm __volatile(" " : : : "memory")



#define __GNUCLIKE_BUILTIN_NEXT_ARG 1
#define __GNUCLIKE_MATH_BUILTIN_RELOPS 


#define __GNUCLIKE_BUILTIN_MEMCPY 1


#define __CC_SUPPORTS_INLINE 1
#define __CC_SUPPORTS___INLINE 1
#define __CC_SUPPORTS___INLINE__ 1

#define __CC_SUPPORTS___FUNC__ 1
#define __CC_SUPPORTS_WARNING 1

#define __CC_SUPPORTS_VARADIC_XXX 1

#define __CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1
# 177 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __P(protos) protos
#define __CONCAT1(x,y) x ## y
#define __CONCAT(x,y) __CONCAT1(x,y)
#define __STRING(x) #x
#define __XSTRING(x) __STRING(x)

#define __const const
#define __signed signed
#define __volatile volatile
# 230 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __weak_symbol __attribute__((__weak__))
# 243 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __dead2 __attribute__((__noreturn__))
#define __pure2 __attribute__((__const__))
#define __unused __attribute__((__unused__))
#define __used __attribute__((__used__))
#define __packed __attribute__((__packed__))
#define __aligned(x) __attribute__((__aligned__(x)))
#define __section(x) __attribute__((__section__(x)))


#define __alloc_size(x) __attribute__((__alloc_size__(x)))
#define __alloc_size2(n,x) __attribute__((__alloc_size__(n, x)))





#define __alloc_align(x) __attribute__((__alloc_align__(x)))
# 280 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define _Alignas(x) __aligned(x)






#define _Alignof(x) __alignof(x)
# 302 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define _Noreturn __dead2
# 331 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define _Thread_local __thread
# 351 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __generic(expr,t,yes,no) __builtin_choose_expr( __builtin_types_compatible_p(__typeof(expr), t), yes, no)
# 366 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __min_size(x) static (x)





#define __malloc_like __attribute__((__malloc__))
#define __pure __attribute__((__pure__))






#define __always_inline __inline__ __attribute__((__always_inline__))





#define __noinline __attribute__ ((__noinline__))





#define __nonnull(x) __attribute__((__nonnull__ x))
#define __nonnull_all __attribute__((__nonnull__))






#define __fastcall __attribute__((__fastcall__))
#define __result_use_check __attribute__((__warn_unused_result__))






#define __returns_twice __attribute__((__returns_twice__))





#define __unreachable() __builtin_unreachable()
# 434 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __restrict restrict
# 467 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __predict_true(exp) __builtin_expect((exp), 1)
#define __predict_false(exp) __builtin_expect((exp), 0)






#define __null_sentinel __attribute__((__sentinel__))
#define __exported __attribute__((__visibility__("default")))


#define __hidden __attribute__((__visibility__("hidden")))
# 489 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __offsetof(type,field) offsetof(type, field)
#define __rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))
# 500 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})
# 522 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))

#define __scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))

#define __format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))
#define __strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))

#define __strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))
# 539 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __printf0like(fmtarg,firstvararg) 




#define __strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))




#define __weak_reference(sym,alias) __asm__(".weak " #alias); __asm__(".equ " #alias ", " #sym)


#define __warn_references(sym,msg) __asm__(".section .gnu.warning." #sym); __asm__(".asciz \"" msg "\""); __asm__(".previous")



#define __sym_compat(sym,impl,verid) __asm__(".symver " #impl ", " #sym "@" #verid)

#define __sym_default(sym,impl,verid) __asm__(".symver " #impl ", " #sym "@@" #verid)
# 593 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __FBSDID(s) struct __hack



#define __RCSID(s) struct __hack



#define __RCSID_SOURCE(s) struct __hack



#define __SCCSID(s) struct __hack



#define __COPYRIGHT(s) struct __hack



#define __DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))



#define __DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))



#define __DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))






#define _Nonnull 
#define _Nullable 
#define _Null_unspecified 
#define __NULLABILITY_PRAGMA_PUSH 
#define __NULLABILITY_PRAGMA_POP 
# 653 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __arg_type_tag(arg_kind,arg_idx,type_tag_idx) 
#define __datatype_type_tag(kind,type) 
# 672 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __lock_annotate(x) 





#define __lockable __lock_annotate(lockable)


#define __locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))

#define __locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))



#define __trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))

#define __trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))



#define __unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))


#define __asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))

#define __asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))



#define __requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))

#define __requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))

#define __requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))



#define __no_lock_analysis __lock_annotate(no_thread_safety_analysis)
# 721 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/cdefs.h" 3 4
#define __nosanitizeaddress 
#define __nosanitizethread 



#define __guarded_by(x) __lock_annotate(guarded_by(x))
#define __pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))
# 6 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/limits.h" 2 3 4
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/syslimits.h" 1 3 4
# 34 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/syslimits.h" 3 4
#define _SYS_SYSLIMITS_H_ 

#define ARG_MAX 65536

#define CHILD_MAX 40

#define LINK_MAX 32767
#define MAX_CANON 255
#define MAX_INPUT 255
#define NAME_MAX 255
#define NGROUPS_MAX 16

#define OPEN_MAX 64

#define PATH_MAX 1024
#define PIPE_BUF 512
#define IOV_MAX 1024

#define BC_BASE_MAX 99
#define BC_DIM_MAX 2048
#define BC_SCALE_MAX 99
#define BC_STRING_MAX 1000
#define COLL_WEIGHTS_MAX 0
#define EXPR_NEST_MAX 32
#define LINE_MAX 2048
#define RE_DUP_MAX 255
# 7 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/limits.h" 2 3 4


#define MB_LEN_MAX _MB_LEN_MAX






#define NL_ARGMAX 32
# 138 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/limits.h" 3 4
#define _POSIX2_RE_DUP_MAX 255
# 196 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include-fixed/limits.h" 2 3 4
# 8 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include-fixed/syslimits.h" 2 3 4
#undef _GCC_NEXT_LIMITS_H
# 35 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include-fixed/limits.h" 2 3 4
# 60 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include-fixed/limits.h" 3 4
#define _LIMITS_H___ 


#undef CHAR_BIT
#define CHAR_BIT __CHAR_BIT__







#undef SCHAR_MIN
#define SCHAR_MIN (-SCHAR_MAX - 1)
#undef SCHAR_MAX
#define SCHAR_MAX __SCHAR_MAX__


#undef UCHAR_MAX



#define UCHAR_MAX (SCHAR_MAX * 2 + 1)




#undef CHAR_MIN



#define CHAR_MIN 0

#undef CHAR_MAX
#define CHAR_MAX UCHAR_MAX
# 103 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include-fixed/limits.h" 3 4
#undef SHRT_MIN
#define SHRT_MIN (-SHRT_MAX - 1)
#undef SHRT_MAX
#define SHRT_MAX __SHRT_MAX__


#undef USHRT_MAX



#define USHRT_MAX (SHRT_MAX * 2 + 1)



#undef INT_MIN
#define INT_MIN (-INT_MAX - 1)
#undef INT_MAX
#define INT_MAX __INT_MAX__


#undef UINT_MAX
#define UINT_MAX (INT_MAX * 2U + 1U)



#undef LONG_MIN
#define LONG_MIN (-LONG_MAX - 1L)
#undef LONG_MAX
#define LONG_MAX __LONG_MAX__


#undef ULONG_MAX
#define ULONG_MAX (LONG_MAX * 2UL + 1UL)



#undef LLONG_MIN
#define LLONG_MIN (-LLONG_MAX - 1LL)
#undef LLONG_MAX
#define LLONG_MAX __LONG_LONG_MAX__


#undef ULLONG_MAX
#define ULLONG_MAX (LLONG_MAX * 2ULL + 1ULL)




#undef LONG_LONG_MIN
#define LONG_LONG_MIN (-LONG_LONG_MAX - 1LL)
#undef LONG_LONG_MAX
#define LONG_LONG_MAX __LONG_LONG_MAX__


#undef ULONG_LONG_MAX
#define ULONG_LONG_MAX (LONG_LONG_MAX * 2ULL + 1ULL)
# 34 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/check_config.h" 2




# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stdint.h" 1 3 4
# 11 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stdint.h" 3 4
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stdint-gcc.h" 1 3 4
# 29 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stdint-gcc.h" 3 4
#define _GCC_STDINT_H 




typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;







#undef INT8_MAX
#define INT8_MAX __INT8_MAX__
#undef INT8_MIN
#define INT8_MIN (-INT8_MAX - 1)


#undef UINT8_MAX
#define UINT8_MAX __UINT8_MAX__


#undef INT16_MAX
#define INT16_MAX __INT16_MAX__
#undef INT16_MIN
#define INT16_MIN (-INT16_MAX - 1)


#undef UINT16_MAX
#define UINT16_MAX __UINT16_MAX__


#undef INT32_MAX
#define INT32_MAX __INT32_MAX__
#undef INT32_MIN
#define INT32_MIN (-INT32_MAX - 1)


#undef UINT32_MAX
#define UINT32_MAX __UINT32_MAX__


#undef INT64_MAX
#define INT64_MAX __INT64_MAX__
#undef INT64_MIN
#define INT64_MIN (-INT64_MAX - 1)


#undef UINT64_MAX
#define UINT64_MAX __UINT64_MAX__


#undef INT_LEAST8_MAX
#define INT_LEAST8_MAX __INT_LEAST8_MAX__
#undef INT_LEAST8_MIN
#define INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)
#undef UINT_LEAST8_MAX
#define UINT_LEAST8_MAX __UINT_LEAST8_MAX__
#undef INT_LEAST16_MAX
#define INT_LEAST16_MAX __INT_LEAST16_MAX__
#undef INT_LEAST16_MIN
#define INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)
#undef UINT_LEAST16_MAX
#define UINT_LEAST16_MAX __UINT_LEAST16_MAX__
#undef INT_LEAST32_MAX
#define INT_LEAST32_MAX __INT_LEAST32_MAX__
#undef INT_LEAST32_MIN
#define INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)
#undef UINT_LEAST32_MAX
#define UINT_LEAST32_MAX __UINT_LEAST32_MAX__
#undef INT_LEAST64_MAX
#define INT_LEAST64_MAX __INT_LEAST64_MAX__
#undef INT_LEAST64_MIN
#define INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)
#undef UINT_LEAST64_MAX
#define UINT_LEAST64_MAX __UINT_LEAST64_MAX__

#undef INT_FAST8_MAX
#define INT_FAST8_MAX __INT_FAST8_MAX__
#undef INT_FAST8_MIN
#define INT_FAST8_MIN (-INT_FAST8_MAX - 1)
#undef UINT_FAST8_MAX
#define UINT_FAST8_MAX __UINT_FAST8_MAX__
#undef INT_FAST16_MAX
#define INT_FAST16_MAX __INT_FAST16_MAX__
#undef INT_FAST16_MIN
#define INT_FAST16_MIN (-INT_FAST16_MAX - 1)
#undef UINT_FAST16_MAX
#define UINT_FAST16_MAX __UINT_FAST16_MAX__
#undef INT_FAST32_MAX
#define INT_FAST32_MAX __INT_FAST32_MAX__
#undef INT_FAST32_MIN
#define INT_FAST32_MIN (-INT_FAST32_MAX - 1)
#undef UINT_FAST32_MAX
#define UINT_FAST32_MAX __UINT_FAST32_MAX__
#undef INT_FAST64_MAX
#define INT_FAST64_MAX __INT_FAST64_MAX__
#undef INT_FAST64_MIN
#define INT_FAST64_MIN (-INT_FAST64_MAX - 1)
#undef UINT_FAST64_MAX
#define UINT_FAST64_MAX __UINT_FAST64_MAX__


#undef INTPTR_MAX
#define INTPTR_MAX __INTPTR_MAX__
#undef INTPTR_MIN
#define INTPTR_MIN (-INTPTR_MAX - 1)


#undef UINTPTR_MAX
#define UINTPTR_MAX __UINTPTR_MAX__


#undef INTMAX_MAX
#define INTMAX_MAX __INTMAX_MAX__
#undef INTMAX_MIN
#define INTMAX_MIN (-INTMAX_MAX - 1)
#undef UINTMAX_MAX
#define UINTMAX_MAX __UINTMAX_MAX__



#undef PTRDIFF_MAX
#define PTRDIFF_MAX __PTRDIFF_MAX__
#undef PTRDIFF_MIN
#define PTRDIFF_MIN (-PTRDIFF_MAX - 1)

#undef SIG_ATOMIC_MAX
#define SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__
#undef SIG_ATOMIC_MIN
#define SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__

#undef SIZE_MAX
#define SIZE_MAX __SIZE_MAX__

#undef WCHAR_MAX
#define WCHAR_MAX __WCHAR_MAX__
#undef WCHAR_MIN
#define WCHAR_MIN __WCHAR_MIN__

#undef WINT_MAX
#define WINT_MAX __WINT_MAX__
#undef WINT_MIN
#define WINT_MIN __WINT_MIN__







#undef INT8_C
#define INT8_C(c) __INT8_C(c)
#undef INT16_C
#define INT16_C(c) __INT16_C(c)
#undef INT32_C
#define INT32_C(c) __INT32_C(c)
#undef INT64_C
#define INT64_C(c) __INT64_C(c)
#undef UINT8_C
#define UINT8_C(c) __UINT8_C(c)
#undef UINT16_C
#define UINT16_C(c) __UINT16_C(c)
#undef UINT32_C
#define UINT32_C(c) __UINT32_C(c)
#undef UINT64_C
#define UINT64_C(c) __UINT64_C(c)
#undef INTMAX_C
#define INTMAX_C(c) __INTMAX_C(c)
#undef UINTMAX_C
#define UINTMAX_C(c) __UINTMAX_C(c)
# 12 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stdint.h" 2 3 4

#define _GCC_WRAP_STDINT_H 
# 39 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/check_config.h" 2
# 253 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/check_config.h"
#undef MBEDTLS_HAS_MEMSAN
# 1010 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/check_config.h"
#undef MBEDTLS_THREADING_IMPL
# 1146 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/check_config.h"

# 1146 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/check_config.h"
typedef int mbedtls_iso_c_forbids_empty_translation_units;
# 193 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/../include/mbedtls/build_info.h" 2
# 15 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h" 2
# 1 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h" 1
# 12 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_LIBRARY_ALIGNMENT_H 


# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/string.h" 1 3







#define _STRING_H_ 

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/_ansi.h" 1 3







#define _ANSIDECL_H_ 


# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/config.h" 1 3

#define __SYS_CONFIG_H__ 

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 77 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/ieeefp.h" 3
#define __IEEE_LITTLE_ENDIAN 
# 496 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/ieeefp.h" 3
#define __OBSOLETE_MATH_DEFAULT 1


#define __OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT
# 5 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/config.h" 2 3
# 224 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/config.h" 3
#define _POINTER_INT long





#undef __RAND_MAX



#define __RAND_MAX 0x7fffffff
# 250 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/config.h" 3
#define __EXPORT 



#define __IMPORT 






#define _READ_WRITE_RETURN_TYPE int





#define _READ_WRITE_BUFSIZE_TYPE int
# 12 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/_ansi.h" 2 3
# 31 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/_ansi.h" 3
#define _BEGIN_STD_C 
#define _END_STD_C 
#define _NOTHROW 



#define _LONG_DOUBLE long double





#define _ATTRIBUTE(attrs) __attribute__ (attrs)
# 69 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/_ansi.h" 3
#define _ELIDABLE_INLINE static __inline__



#define _NOINLINE __attribute__ ((__noinline__))
#define _NOINLINE_STATIC _NOINLINE static
# 11 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/string.h" 2 3
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 1 3
# 11 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
#define _SYS_REENT_H_ 

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 1 3 4
# 15 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/_types.h" 1 3
# 20 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/_types.h" 3
#define _SYS__TYPES_H 

#define __need_size_t 
#define __need_wint_t 
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 1 3 4
# 155 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_ptrdiff_t
# 231 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_size_t
# 340 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_wchar_t




#define _WINT_T 





# 350 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
typedef unsigned int wint_t;

#undef __need_wint_t
# 390 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 25 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/_types.h" 2 3


# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_types.h" 1 3





#define _MACHINE__TYPES_H 
# 28 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 127 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/_types.h" 3
#undef __size_t



typedef unsigned int __size_t;
# 146 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/_types.h" 3
#define unsigned signed
typedef signed int _ssize_t;
#undef unsigned
# 158 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;



#define _CLOCK_T_ unsigned long


typedef unsigned long __clock_t;




#define _TIME_T_ __int_least64_t

typedef __int_least64_t __time_t;


#define _CLOCKID_T_ unsigned long


typedef unsigned long __clockid_t;

#define _TIMER_T_ unsigned long
typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 2 3

#define _NULL 0



#define __Long long
typedef unsigned long __ULong;
# 34 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/lock.h" 1 3

#define __SYS_LOCK_H__ 
# 33 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/lock.h" 3
struct __lock;
typedef struct __lock * _LOCK_T;
#define _LOCK_RECURSIVE_T _LOCK_T

#define __LOCK_INIT(class,lock) extern struct __lock __lock_ ## lock; class _LOCK_T lock = &__lock_ ## lock

#define __LOCK_INIT_RECURSIVE(class,lock) __LOCK_INIT(class,lock)

extern void __retarget_lock_init(_LOCK_T *lock);
#define __lock_init(lock) __retarget_lock_init(&lock)
extern void __retarget_lock_init_recursive(_LOCK_T *lock);
#define __lock_init_recursive(lock) __retarget_lock_init_recursive(&lock)
extern void __retarget_lock_close(_LOCK_T lock);
#define __lock_close(lock) __retarget_lock_close(lock)
extern void __retarget_lock_close_recursive(_LOCK_T lock);
#define __lock_close_recursive(lock) __retarget_lock_close_recursive(lock)
extern void __retarget_lock_acquire(_LOCK_T lock);
#define __lock_acquire(lock) __retarget_lock_acquire(lock)
extern void __retarget_lock_acquire_recursive(_LOCK_T lock);
#define __lock_acquire_recursive(lock) __retarget_lock_acquire_recursive(lock)
extern int __retarget_lock_try_acquire(_LOCK_T lock);
#define __lock_try_acquire(lock) __retarget_lock_try_acquire(lock)
extern int __retarget_lock_try_acquire_recursive(_LOCK_T lock);
#define __lock_try_acquire_recursive(lock) __retarget_lock_try_acquire_recursive(lock)

extern void __retarget_lock_release(_LOCK_T lock);
#define __lock_release(lock) __retarget_lock_release(lock)
extern void __retarget_lock_release_recursive(_LOCK_T lock);
#define __lock_release_recursive(lock) __retarget_lock_release_recursive(lock)
# 35 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 2 3
typedef _LOCK_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};





#define _ATEXIT_SIZE 32

struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
#define _ATEXIT_INIT {_NULL, 0, {_NULL}, {{_NULL}, {_NULL}, 0, 0}}





#define _REENT_INIT_ATEXIT _NULL, _ATEXIT_INIT,
# 122 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 183 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
#define _REENT_SMALL_CHECK_INIT(ptr) 


struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
#define _RAND48_SEED_0 (0x330e)
#define _RAND48_SEED_1 (0xabcd)
#define _RAND48_SEED_2 (0x1234)
#define _RAND48_MULT_0 (0xe66d)
#define _RAND48_MULT_1 (0xdeec)
#define _RAND48_MULT_2 (0x0005)
#define _RAND48_ADD (0x000b)
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};


#define _REENT_EMERGENCY_SIZE 25
#define _REENT_ASCTIME_SIZE 26
#define _REENT_SIGNAL_SIZE 24
# 613 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {
#define _N_LISTS 30
          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};





#define _REENT_STDIO_STREAM(var,index) &(var)->__sf[index]


#define _REENT_INIT(var) { 0, _REENT_STDIO_STREAM(&(var), 0), _REENT_STDIO_STREAM(&(var), 1), _REENT_STDIO_STREAM(&(var), 2), 0, "", 0, _NULL, 0, _NULL, _NULL, 0, _NULL, _NULL, 0, _NULL, { { 0, _NULL, "", {0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, 1, { {_RAND48_SEED_0, _RAND48_SEED_1, _RAND48_SEED_2}, {_RAND48_MULT_0, _RAND48_MULT_1, _RAND48_MULT_2}, _RAND48_ADD }, {0, {0}}, {0, {0}}, {0, {0}}, "", "", 0, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}} } }, _REENT_INIT_ATEXIT _NULL, {_NULL, 0, _NULL} }
# 751 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
#define _REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = _REENT_STDIO_STREAM(var, 0); (var)->_stdout = _REENT_STDIO_STREAM(var, 1); (var)->_stderr = _REENT_STDIO_STREAM(var, 2); (var)->_new._reent._rand_next = 1; (var)->_new._reent._r48._seed[0] = _RAND48_SEED_0; (var)->_new._reent._r48._seed[1] = _RAND48_SEED_1; (var)->_new._reent._r48._seed[2] = _RAND48_SEED_2; (var)->_new._reent._r48._mult[0] = _RAND48_MULT_0; (var)->_new._reent._r48._mult[1] = _RAND48_MULT_1; (var)->_new._reent._r48._mult[2] = _RAND48_MULT_2; (var)->_new._reent._r48._add = _RAND48_ADD; }
# 765 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
#define _REENT_CHECK_RAND48(ptr) 
#define _REENT_CHECK_MP(ptr) 
#define _REENT_CHECK_TM(ptr) 
#define _REENT_CHECK_ASCTIME_BUF(ptr) 
#define _REENT_CHECK_EMERGENCY(ptr) 
#define _REENT_CHECK_MISC(ptr) 
#define _REENT_CHECK_SIGNAL_BUF(ptr) 

#define _REENT_SIGNGAM(ptr) ((ptr)->_new._reent._gamma_signgam)
#define _REENT_RAND_NEXT(ptr) ((ptr)->_new._reent._rand_next)
#define _REENT_RAND48_SEED(ptr) ((ptr)->_new._reent._r48._seed)
#define _REENT_RAND48_MULT(ptr) ((ptr)->_new._reent._r48._mult)
#define _REENT_RAND48_ADD(ptr) ((ptr)->_new._reent._r48._add)
#define _REENT_MP_RESULT(ptr) ((ptr)->_result)
#define _REENT_MP_RESULT_K(ptr) ((ptr)->_result_k)
#define _REENT_MP_P5S(ptr) ((ptr)->_p5s)
#define _REENT_MP_FREELIST(ptr) ((ptr)->_freelist)
#define _REENT_ASCTIME_BUF(ptr) ((ptr)->_new._reent._asctime_buf)
#define _REENT_TM(ptr) (&(ptr)->_new._reent._localtime_buf)
#define _REENT_EMERGENCY(ptr) ((ptr)->_emergency)
#define _REENT_STRTOK_LAST(ptr) ((ptr)->_new._reent._strtok_last)
#define _REENT_MBLEN_STATE(ptr) ((ptr)->_new._reent._mblen_state)
#define _REENT_MBTOWC_STATE(ptr) ((ptr)->_new._reent._mbtowc_state)
#define _REENT_WCTOMB_STATE(ptr) ((ptr)->_new._reent._wctomb_state)
#define _REENT_MBRLEN_STATE(ptr) ((ptr)->_new._reent._mbrlen_state)
#define _REENT_MBRTOWC_STATE(ptr) ((ptr)->_new._reent._mbrtowc_state)
#define _REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_new._reent._mbsrtowcs_state)
#define _REENT_WCRTOMB_STATE(ptr) ((ptr)->_new._reent._wcrtomb_state)
#define _REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_new._reent._wcsrtombs_state)
#define _REENT_L64A_BUF(ptr) ((ptr)->_new._reent._l64a_buf)
#define _REENT_SIGNAL_BUF(ptr) ((ptr)->_new._reent._signal_buf)
#define _REENT_GETDATE_ERR_P(ptr) (&((ptr)->_new._reent._getdate_err))



#define _REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }







#define _Kmax (sizeof (size_t) << 3)







#define __ATTRIBUTE_IMPURE_PTR__ 


extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 832 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/reent.h" 3
#define _REENT _impure_ptr


#define _GLOBAL_REENT _global_impure_ptr





#define _GLOBAL_ATEXIT (_GLOBAL_REENT->_atexit)
# 12 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/string.h" 2 3



#define __need_size_t 
#define __need_NULL 
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 1 3 4
# 155 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_ptrdiff_t
# 231 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_size_t
# 340 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_wchar_t
# 390 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 18 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/string.h" 2 3


# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/_locale.h" 1 3



#define _SYS__LOCALE_H 




struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/string.h" 2 3



# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/strings.h" 1 3
# 30 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/strings.h" 3
#define _STRINGS_H_ 
# 44 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);
# 76 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 175 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/string.h" 3
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/string.h" 1 3
# 176 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/string.h" 2 3


# 16 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h" 2
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 1 3







#define _STDLIB_H_ 

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 2 3


#define __need_size_t 
#define __need_wchar_t 
#define __need_NULL 
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 1 3 4
# 155 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_ptrdiff_t
# 231 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_size_t
# 340 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef __need_wchar_t
# 390 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 3 4
#undef NULL




#define NULL ((void *)0)





#undef __need_NULL




#define offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
# 17 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 2 3



# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/stdlib.h" 1 3

#define _MACHSTDLIB_H_ 
# 21 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/alloca.h" 1 3







#define _NEWLIB_ALLOCA_H 




#undef alloca


#define alloca(size) __builtin_alloca(size)
# 23 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;



#define __compar_fn_t_defined 
typedef int (*__compar_fn_t) (const void *, const void *);


#define EXIT_FAILURE 1
#define EXIT_SUCCESS 0

#define RAND_MAX __RAND_MAX

int __locale_mb_cur_max (void);

#define MB_CUR_MAX __locale_mb_cur_max()

void abort (void) __attribute__ ((__noreturn__));
int abs (int);

__uint32_t arc4random (void);
__uint32_t arc4random_uniform (__uint32_t);
void arc4random_buf (void *, size_t);

int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);



char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);






int mkstemp (char *);


int mkstemps (char *, int);


char * mktemp (char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));


char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;

void *reallocarray(void *, size_t, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2, 3)));
void *reallocf(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2)));


char * realpath (const char *restrict path, char *restrict resolved_path);


int rpmatch (const char *response);




void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);




#define strtodf strtof


long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 191 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);


int on_exit (void (*__func)(int, void *),void *__arg);


void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);

int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);

int setenv (const char *__string, const char *__value, int __overwrite);

int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 224 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);


int rand_r (unsigned *__seed);



double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);


char * initstate (unsigned, char *, size_t);
long random (void);
char * setstate (char *);
void srandom (unsigned);


long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);



void cfree (void *);


int unsetenv (const char *__string);

int _unsetenv_r (struct _reent *, const char *__string);



int posix_memalign (void **, size_t, size_t) __attribute__((__nonnull__ (1)))
     __attribute__((__warn_unused_result__));


char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 312 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 3
void qsort_r (void *__base, size_t __nmemb, size_t __size, void *__thunk, int (*_compar)(void *, const void *, const void *))
             __asm__ ("" "__bsd_qsort_r");
# 322 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 339 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/stdlib.h" 3

# 17 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h" 2
# 37 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_EFFICIENT_UNALIGNED_ACCESS 
# 113 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"

# 113 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
__attribute__((always_inline))

static inline uint16_t mbedtls_get_unaligned_uint16(const void *p)
{
    uint16_t r;







    memcpy(&r, p, sizeof(r));

    return r;
}
# 140 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
__attribute__((always_inline))

static inline void mbedtls_put_unaligned_uint16(void *p, uint16_t x)
{







    memcpy(p, &x, sizeof(x));

}
# 165 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
__attribute__((always_inline))

static inline uint32_t mbedtls_get_unaligned_uint32(const void *p)
{
    uint32_t r;







    memcpy(&r, p, sizeof(r));

    return r;
}
# 192 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
__attribute__((always_inline))

static inline void mbedtls_put_unaligned_uint32(void *p, uint32_t x)
{







    memcpy(p, &x, sizeof(x));

}
# 217 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
__attribute__((always_inline))

static inline uint64_t mbedtls_get_unaligned_uint64(const void *p)
{
    uint64_t r;







    memcpy(&r, p, sizeof(r));

    return r;
}
# 244 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
__attribute__((always_inline))

static inline void mbedtls_put_unaligned_uint64(void *p, uint64_t x)
{







    memcpy(p, &x, sizeof(x));

}
# 268 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_BYTE_0(x) ((uint8_t) ((x) & 0xff))
#define MBEDTLS_BYTE_1(x) ((uint8_t) (((x) >> 8) & 0xff))
#define MBEDTLS_BYTE_2(x) ((uint8_t) (((x) >> 16) & 0xff))
#define MBEDTLS_BYTE_3(x) ((uint8_t) (((x) >> 24) & 0xff))
#define MBEDTLS_BYTE_4(x) ((uint8_t) (((x) >> 32) & 0xff))
#define MBEDTLS_BYTE_5(x) ((uint8_t) (((x) >> 40) & 0xff))
#define MBEDTLS_BYTE_6(x) ((uint8_t) (((x) >> 48) & 0xff))
#define MBEDTLS_BYTE_7(x) ((uint8_t) (((x) >> 56) & 0xff))






#define MBEDTLS_BSWAP16 __builtin_bswap16


#define MBEDTLS_BSWAP32 __builtin_bswap32
#define MBEDTLS_BSWAP64 __builtin_bswap64
# 398 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_IS_BIG_ENDIAN 0
# 412 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_GET_UINT32_BE(data,offset) ((MBEDTLS_IS_BIG_ENDIAN) ? mbedtls_get_unaligned_uint32((data) + (offset)) : MBEDTLS_BSWAP32(mbedtls_get_unaligned_uint32((data) + (offset))) )
# 427 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_PUT_UINT32_BE(n,data,offset) { if (MBEDTLS_IS_BIG_ENDIAN) { mbedtls_put_unaligned_uint32((data) + (offset), (uint32_t) (n)); } else { mbedtls_put_unaligned_uint32((data) + (offset), MBEDTLS_BSWAP32((uint32_t) (n))); } }
# 448 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_GET_UINT32_LE(data,offset) ((MBEDTLS_IS_BIG_ENDIAN) ? MBEDTLS_BSWAP32(mbedtls_get_unaligned_uint32((data) + (offset))) : mbedtls_get_unaligned_uint32((data) + (offset)) )
# 464 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_PUT_UINT32_LE(n,data,offset) { if (MBEDTLS_IS_BIG_ENDIAN) { mbedtls_put_unaligned_uint32((data) + (offset), MBEDTLS_BSWAP32((uint32_t) (n))); } else { mbedtls_put_unaligned_uint32((data) + (offset), ((uint32_t) (n))); } }
# 485 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_GET_UINT16_LE(data,offset) ((MBEDTLS_IS_BIG_ENDIAN) ? MBEDTLS_BSWAP16(mbedtls_get_unaligned_uint16((data) + (offset))) : mbedtls_get_unaligned_uint16((data) + (offset)) )
# 500 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_PUT_UINT16_LE(n,data,offset) { if (MBEDTLS_IS_BIG_ENDIAN) { mbedtls_put_unaligned_uint16((data) + (offset), MBEDTLS_BSWAP16((uint16_t) (n))); } else { mbedtls_put_unaligned_uint16((data) + (offset), (uint16_t) (n)); } }
# 521 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_GET_UINT16_BE(data,offset) ((MBEDTLS_IS_BIG_ENDIAN) ? mbedtls_get_unaligned_uint16((data) + (offset)) : MBEDTLS_BSWAP16(mbedtls_get_unaligned_uint16((data) + (offset))) )
# 536 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_PUT_UINT16_BE(n,data,offset) { if (MBEDTLS_IS_BIG_ENDIAN) { mbedtls_put_unaligned_uint16((data) + (offset), (uint16_t) (n)); } else { mbedtls_put_unaligned_uint16((data) + (offset), MBEDTLS_BSWAP16((uint16_t) (n))); } }
# 557 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_GET_UINT24_BE(data,offset) ( ((uint32_t) (data)[(offset)] << 16) | ((uint32_t) (data)[(offset) + 1] << 8) | ((uint32_t) (data)[(offset) + 2]) )
# 573 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_PUT_UINT24_BE(n,data,offset) { (data)[(offset)] = MBEDTLS_BYTE_2(n); (data)[(offset) + 1] = MBEDTLS_BYTE_1(n); (data)[(offset) + 2] = MBEDTLS_BYTE_0(n); }
# 589 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_GET_UINT24_LE(data,offset) ( ((uint32_t) (data)[(offset)]) | ((uint32_t) (data)[(offset) + 1] << 8) | ((uint32_t) (data)[(offset) + 2] << 16) )
# 605 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_PUT_UINT24_LE(n,data,offset) { (data)[(offset)] = MBEDTLS_BYTE_0(n); (data)[(offset) + 1] = MBEDTLS_BYTE_1(n); (data)[(offset) + 2] = MBEDTLS_BYTE_2(n); }
# 621 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_GET_UINT64_BE(data,offset) ((MBEDTLS_IS_BIG_ENDIAN) ? mbedtls_get_unaligned_uint64((data) + (offset)) : MBEDTLS_BSWAP64(mbedtls_get_unaligned_uint64((data) + (offset))) )
# 636 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_PUT_UINT64_BE(n,data,offset) { if (MBEDTLS_IS_BIG_ENDIAN) { mbedtls_put_unaligned_uint64((data) + (offset), (uint64_t) (n)); } else { mbedtls_put_unaligned_uint64((data) + (offset), MBEDTLS_BSWAP64((uint64_t) (n))); } }
# 657 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_GET_UINT64_LE(data,offset) ((MBEDTLS_IS_BIG_ENDIAN) ? MBEDTLS_BSWAP64(mbedtls_get_unaligned_uint64((data) + (offset))) : mbedtls_get_unaligned_uint64((data) + (offset)) )
# 672 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/alignment.h"
#define MBEDTLS_PUT_UINT64_LE(n,data,offset) { if (MBEDTLS_IS_BIG_ENDIAN) { mbedtls_put_unaligned_uint64((data) + (offset), MBEDTLS_BSWAP64((uint64_t) (n))); } else { mbedtls_put_unaligned_uint64((data) + (offset), (uint64_t) (n)); } }
# 16 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h" 2

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/assert.h" 1 3
# 11 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/assert.h" 3
#undef assert




#define assert(__e) ((__e) ? (void)0 : __assert_func (__FILE__, __LINE__, __ASSERT_FUNC, #__e))
# 26 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/assert.h" 3
#define __ASSERT_FUNC __func__
# 39 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/assert.h" 3

# 39 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/assert.h" 3
void __assert (const char *, int, const char *)
     __attribute__ ((__noreturn__));
void __assert_func (const char *, int, const char *, const char *)
     __attribute__ ((__noreturn__));
# 18 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h" 2
# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 1 3 4
# 19 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h" 2

# 1 "/home/araujoj20/eclipse-SDK-4.8-linux-gtk-x86_64/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stddef.h" 1 3 4
# 21 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h" 2
# 48 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
#define MBEDTLS_STATIC_TESTABLE static
# 61 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
#define MBEDTLS_TEST_HOOK_TEST_ASSERT(TEST) 
# 73 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
#define ARRAY_LENGTH_UNSAFE(array) (sizeof(array) / sizeof(*(array)))





#define IS_ARRAY_NOT_POINTER(arg) (!__builtin_types_compatible_p(__typeof__(arg), __typeof__(&(arg)[0])))




#define STATIC_ASSERT_EXPR(const_expr) (0 && sizeof(struct { unsigned int STATIC_ASSERT : 1 - 2 * !(const_expr); }))





#define STATIC_ASSERT_THEN_RETURN(condition,value) (STATIC_ASSERT_EXPR(condition) ? 0 : (value))


#define ARRAY_LENGTH(array) (STATIC_ASSERT_THEN_RETURN(IS_ARRAY_NOT_POINTER(array), ARRAY_LENGTH_UNSAFE(array)))
# 107 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
#define MBEDTLS_ALLOW_PRIVATE_ACCESS 
# 121 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"

# 121 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
void mbedtls_zeroize_and_free(void *buf, size_t len);
# 138 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
static inline unsigned char *mbedtls_buffer_offset(
    unsigned char *p, size_t n)
{
    return p == 
# 141 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h" 3 4
               ((void *)0) 
# 141 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
                    ? 
# 141 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h" 3 4
                      ((void *)0) 
# 141 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
                           : p + n;
}
# 155 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
static inline const unsigned char *mbedtls_buffer_offset_const(
    const unsigned char *p, size_t n)
{
    return p == 
# 158 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h" 3 4
               ((void *)0) 
# 158 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
                    ? 
# 158 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h" 3 4
                      ((void *)0) 
# 158 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
                           : p + n;
}





__attribute__((always_inline))
# 186 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
static inline void mbedtls_xor(unsigned char *r,
                               const unsigned char *a,
                               const unsigned char *b,
                               size_t n)
{
    size_t i = 0;
# 223 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
    for (; (i + 4) <= n; i += 4) {
        uint32_t x = mbedtls_get_unaligned_uint32(a + i) ^ mbedtls_get_unaligned_uint32(b + i);
        mbedtls_put_unaligned_uint32(r + i, x);
    }







    for (; i < n; i++) {
        r[i] = a[i] ^ b[i];
    }
}






__attribute__((always_inline))
# 268 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
static inline void mbedtls_xor_no_simd(unsigned char *r,
                                       const unsigned char *a,
                                       const unsigned char *b,
                                       size_t n)
{
    size_t i = 0;
# 291 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
    for (; (i + 4) <= n; i += 4) {
        uint32_t x = mbedtls_get_unaligned_uint32(a + i) ^ mbedtls_get_unaligned_uint32(b + i);
        mbedtls_put_unaligned_uint32(r + i, x);
    }







    for (; i < n; i++) {
        r[i] = a[i] ^ b[i];
    }
}
# 321 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
#define asm __asm__
# 366 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
#define MBEDTLS_STATIC_ASSERT(expr,msg) struct ISO_C_does_not_allow_extra_semicolon_outside_of_a_function




#define MBEDTLS_HAS_BUILTIN(x) __has_builtin(x)






#define MBEDTLS_LIKELY(x) __builtin_expect(!!(x), 1)
#define MBEDTLS_UNLIKELY(x) __builtin_expect(!!(x), 0)
# 392 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
#define MBEDTLS_ASSUME(x) do { if (!(x)) __builtin_unreachable(); } while (0)
# 407 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
#define MBEDTLS_OPTIMIZE_FOR_PERFORMANCE 





#define MBEDTLS_MAYBE_UNUSED __attribute__((unused))
# 444 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/common.h"
#define MBEDTLS_HAS_ATTRIBUTE_NONSTRING 



#define MBEDTLS_ATTRIBUTE_UNTERMINATED_STRING __attribute__((nonstring))
# 9 "/home/araujoj20/Documents/eclipse-rtd/mbedtls-f4/mbedtls/library/bignum_mod_raw.c" 2

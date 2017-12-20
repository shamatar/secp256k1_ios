#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "lax_der_parsing.h"
#import "lax_der_privatekey_parsing.h"
#import "secp256k1.h"
#import "secp256k1_ecdh.h"
#import "secp256k1_recovery.h"
#import "basic-config.h"
#import "ecdsa.h"
#import "ecdsa_impl.h"
#import "eckey.h"
#import "eckey_impl.h"
#import "ecmult.h"
#import "ecmult_const.h"
#import "ecmult_const_impl.h"
#import "ecmult_gen.h"
#import "ecmult_gen_impl.h"
#import "ecmult_impl.h"
#import "field.h"
#import "field_10x26.h"
#import "field_10x26_impl.h"
#import "field_5x52.h"
#import "field_5x52_asm_impl.h"
#import "field_5x52_impl.h"
#import "field_5x52_int128_impl.h"
#import "field_impl.h"
#import "group.h"
#import "group_impl.h"
#import "hash.h"
#import "hash_impl.h"
#import "main_impl.h"
#import "main_impl.h"
#import "num.h"
#import "num_gmp.h"
#import "num_gmp_impl.h"
#import "num_impl.h"
#import "scalar.h"
#import "scalar_4x64.h"
#import "scalar_4x64_impl.h"
#import "scalar_8x32.h"
#import "scalar_8x32_impl.h"
#import "scalar_impl.h"
#import "scalar_low.h"
#import "scalar_low_impl.h"
#import "util.h"

FOUNDATION_EXPORT double secp256k1_iosVersionNumber;
FOUNDATION_EXPORT const unsigned char secp256k1_iosVersionString[];


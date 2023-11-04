#ifndef identity_h
#define identity_h

#include <stdint.h>
#include <swift/bridging>

int32_t int32_identity(int32_t x);

int64_t int64_identity(int64_t x) SWIFT_NAME(int64Identity(_:));

#endif

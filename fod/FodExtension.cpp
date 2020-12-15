#include <compositionengine/FodExtension.h>

uint32_t getFodZOrder(uint32_t z, bool touched) {
    (void) touched;
    return z;
}

uint64_t getFodUsageBits(uint64_t usageBits, bool touched) {
   if (touched)
    usageBits |= 0x400000000LL;

    return usageBits;
}

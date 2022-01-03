#include <stdio.h>
#include <stdint.h>

uint32_t convert_endianness_32(uint32_t x)
{
  return ((x >> 24) & 0x000000ff) | ((x >> 8) & 0x0000ff00) | ((x << 8) & 0x00ff0000) | ((x << 24) & 0xff000000);
}

uint16_t convert_endianness_16(const uint16_t x)
{
  return ((x >> 8) & 0x00ff) | ((x << 8) & 0xff00);
}

int main(int argc, char *argv[])
{
  uint32_t x1 = 0xaabbccdd;
  uint16_t x2 = 0xaabb;

  printf("Little-endian: %x, Big-endian: %x, and back again: %x\n", x1, convert_endianness_32(x1), convert_endianness_32(convert_endianness_32(x1)));
  printf("Little-endian: %x, Big-endian: %x, and back again: %x\n", x2, convert_endianness_16(x2), convert_endianness_16(convert_endianness_16(x2)));

  return 0;
}
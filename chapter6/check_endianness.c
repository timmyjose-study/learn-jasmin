#include <stdio.h>

int main(int argc, char *argv[])
{
  int x = 1;
  unsigned char *buf = (unsigned char*)&x;

  if (buf[0] == 1) {
    printf("Little Endian\n");
  } else {
    printf("Big Endian\n");
  }

  return 0;
}
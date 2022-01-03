public class Endianness {
  public static void main(String[] args) {
    int x1 = 0xaabbccdd;
    System.out.printf("Little-endian: %x, Big-endian: %x, and back again: %x\n", x1, convertEndianness32(x1), convertEndianness32(convertEndianness32(x1)));
    System.out.printf("%x\n", convertEndianness32(0xdd, 0xcc, 0xbb, 0xaa));

    int x2 = 0xaabb;
    System.out.printf("Little-endian: %x, Big-endian: %x, and back again: %x\n", x2, convertEndianness16(x2), convertEndianness16(convertEndianness16(x2)));
    System.out.printf("%x\n", convertEndianness16(0xbb, 0xaa));
  }

  private static int convertEndianness32(int x) {
    return ((x >>> 24) & 0x000000ff) | ((x >> 8) & 0x0000ff00) | ((x << 8) & 0x00ff0000) | ((x << 24) & 0xff000000);
  }

  private static int convertEndianness32(int b1, int b2, int b3, int b4) {
    return (b4 << 24) + (b3 << 16) | (b2 << 8) | b1;
  }

  private static int convertEndianness16(int x) {
    return ((x >> 8) & 0x00ff) | ((x << 8) & 0xff00);
  }

  private static int convertEndianness16(int b1, int b2) {
    return (b2 << 8) + b1;
  }
}
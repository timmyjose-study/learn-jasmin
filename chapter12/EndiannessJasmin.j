; Jasmin equivalent to Endianness.java

.class public EndiannessJasmin
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method private static convertEndianness32(I)I
  .limit stack 5
  .limit locals 2

  iload_0 ; load the arg
  bipush 24
  ishr ; x >> 24
  ldc 0x000000ff
  iand ; (x >> 24) & 0x000000ff
  istore_1

  iload_1
  iload_0
  bipush 8
  ishr
  ldc 0x0000ff00

  iand
  ior
  istore_1

  iload_1
  iload_0
  bipush 8
  ishl 
  ldc 0x00ff0000
  iand
  ior
  istore_1

  iload_1
  iload_0
  bipush 24
  ishl
  ldc 0xff000000
  iand
  ior

  ireturn
.end method

.method private static convertEndianness32(IIII)I
  .limit stack 5
  .limit locals 5

  iload_3
  bipush 24
  ishl
  istore 4

  iload 4
  iload_2
  bipush 16
  ishl
  iadd
  istore 4

  iload 4
  iload_1
  bipush 8
  ishl
  iadd
  istore 4

  iload 4
  iload_0
  iadd
  ireturn
.end method

.method private static convertEndianness16(I)I
  .limit stack 5
  .limit locals 2

  iload_0
  bipush 8
  ishr
  ldc 0x00ff
  iand
  istore_1

  iload_1
  iload_0
  bipush 8
  ishl
  ldc 0xff00
  iand
  ior
  ireturn
.end method

.method private static convertEndianness16(II)I
  .limit stack 4
  .limit locals 3

  iload_1
  bipush 8
  ishl
  iload_0
  iadd
  ireturn
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 10
  .limit locals 5

  ldc 0xaabbccdd
  istore_1

  ; array for `printf` arguments
  iconst_3
  anewarray java/lang/Integer ; this is a quirk with Jasmin
  astore_2

  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "Little-endian: %x, Big-endian: %x, and back again: %x\n"
  aload_2
  iconst_0 ; index
  iload_1
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer; ; value
  aastore
  aload_2
  iconst_1
  iload_1
  invokestatic EndiannessJasmin/convertEndianness32(I)I
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
  aastore
  aload_2
  iconst_2
  iload_1
  invokestatic EndiannessJasmin/convertEndianness32(I)I
  invokestatic EndiannessJasmin/convertEndianness32(I)I
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
  aastore
  aload_2
  invokevirtual java/io/PrintStream/printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
  pop

  iconst_1
  anewarray java/lang/Integer
  astore_2

  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "%x\n"
  aload_2
  iconst_0
  sipush 0xdd
  sipush 0xcc
  sipush 0xbb
  sipush 0xaa
  invokestatic EndiannessJasmin/convertEndianness32(IIII)I
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
  aastore
  aload_2
  invokevirtual java/io/PrintStream/printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
  pop

  iconst_3
  anewarray java/lang/Integer
  astore_2

  ldc 0xaabb
  istore 4
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "Little-endian: %x, Big-endian: %x, and back again: %x\n"
  aload_2
  iconst_0 ; index
  iload 4
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer; ; value
  aastore
  aload_2
  iconst_1
  iload 4
  invokestatic EndiannessJasmin/convertEndianness16(I)I
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
  aastore
  aload_2
  iconst_2
  iload 4
  invokestatic EndiannessJasmin/convertEndianness16(I)I
  invokestatic EndiannessJasmin/convertEndianness16(I)I
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
  aastore
  aload_2
  invokevirtual java/io/PrintStream/printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
  pop

  iconst_1
  anewarray java/lang/Integer
  astore_2

  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "%x\n"
  aload_2
  iconst_0
  sipush 0xbb
  sipush 0xaa
  invokestatic EndiannessJasmin/convertEndianness16(II)I
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
  aastore
  aload_2
  invokevirtual java/io/PrintStream/printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
  pop

  return
.end method
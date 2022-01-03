; Define a method `test` that tests if the passed in integer is less than 10.
; If so, return that integer back else return 10.

.class public TestIfDemo
.super java/lang/Object

.method <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method private test(I)I
  .limit stack 2
  .limit locals 2

  iload_1 ; load arg
  bipush 10
  if_icmpge setret
  iload_1
  goto back ; don't use `ret` as a label - it's an opcode !

setret:
  bipush 10

back:
  ireturn
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 2

  ; create a new instance of TestIfDemo
  new TestIfDemo
  dup
  invokespecial TestIfDemo/<init>()V
  astore_1

  ; test with 5
  getstatic java/lang/System/out Ljava/io/PrintStream;
  aload_1
  bipush 5
  invokevirtual TestIfDemo/test(I)I
  invokevirtual java/io/PrintStream/println(I)V

  ; test with 10
  getstatic java/lang/System/out Ljava/io/PrintStream;
  aload_1
  bipush 10
  invokevirtual TestIfDemo/test(I)I
  invokevirtual java/io/PrintStream/println(I)V
  return
.end method
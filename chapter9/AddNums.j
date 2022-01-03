; add two numbers read from stdin

.class public AddNums
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method private addNums(II)I
  .limit stack 3
  .limit locals 3

  iload_1
  iload_2
  iadd
  ireturn
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 7

  new AddNums
  dup
  invokespecial AddNums/<init>()V
  astore_1

  ; create the Scanner object
  new java/util/Scanner
  dup
  getstatic java/lang/System/in Ljava/io/InputStream;
  invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
  astore_2

  ; read in the numbers
  jsr readNums
  istore_3 ; read and store x
  jsr readNums
  ; note - istore_n and iload_n only work for n upto 3
  istore 4 ; read and store y

  ; close the Scanner
  aload_2
  invokevirtual java/util/Scanner/close()V

  ; add the numbers
  aload_1
  iload_3
  iload 4
  invokevirtual AddNums/addNums(II)I

  ; print the sum to stdout
  jsr printNums
  return

readNums:
  astore 5 ; save the return address

  aload_2
  invokevirtual java/util/Scanner/nextInt()I

  ret 5 ; return to where readNums was called from

printNums:
  astore 6 ; save the return address

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(I)V

  ret 6 ; return to where printNums was called from
.end method

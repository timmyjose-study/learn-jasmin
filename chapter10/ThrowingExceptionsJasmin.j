; Jasmin equivalent of ThrowingExceptons.java
; Exception classes are defined in MyException.j and AnotherException.j respectively

.class public ThrowingExceptionsJasmin
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method static divideNums(II)I
  .throws MyExceptionJasmin
  .throws AnotherExceptionJasmin

  .limit stack 3
  .limit locals 3

  iload_1 ; load the second arg
  ifeq excep1

  iload_1
  iconst_3
  if_icmpeq excep2

  iload_0 ; load the first arg
  iload_1 ; load the second arg
  idiv
  ireturn

excep1:
  new MyExceptionJasmin
  dup
  ldc "it doesn't work that way"
  invokespecial MyExceptionJasmin/<init>(Ljava/lang/String;)V
  athrow

excep2:
  new AnotherExceptionJasmin
  dup
  ldc "I don't support 3"
  invokespecial AnotherExceptionJasmin/<init>(Ljava/lang/String;)V
  athrow
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 2
  .catch  MyExceptionJasmin from TryOpen to TryClose using Handler
  .catch AnotherExceptionJasmin from TryOpen to TryClose using Handler

TryOpen:
  bipush 12
  iconst_2
  invokestatic ThrowingExceptionsJasmin/divideNums(II)I
  jsr printRes

  bipush 12
  iconst_0
  invokestatic ThrowingExceptionsJasmin/divideNums(II)I
  jsr printRes
  return
TryClose:

Handler:
  ; simply print the exception message

  invokevirtual java/lang/Exception/getLocalizedMessage()Ljava/lang/String;
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

  return 

printRes:
  astore_1
  
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(I)V

  ret 1
.end method

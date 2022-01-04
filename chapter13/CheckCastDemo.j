; demo of checkcast

.class public CheckCastDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 1

  ; create a new String object
  new java/lang/String
  dup
  ldc "hello, world"
  invokespecial java/lang/String/<init>(Ljava/lang/String;)V
  checkcast java/lang/String 
  invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  return
.end method




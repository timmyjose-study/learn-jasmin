; demonstrating how to use `athrow` to throw exceptions

.class public GenerateIndexOutOfBoundsException
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 1

  new java/lang/IndexOutOfBoundsException
  dup
  invokespecial java/lang/IndexOutOfBoundsException/<init>()V

  athrow ; throw the exception
.end method
; demo of checkcast throwing a ClassCastException

.class public CheckCastExceptionDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 1
  .limit locals 1

  sipush 100
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
  checkcast java/lang/String ; should throw a ClassCastException
  return
.end method





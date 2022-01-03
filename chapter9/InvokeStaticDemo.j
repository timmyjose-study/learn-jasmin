; a simple invokestatic demo - exit from `main` with an exit code of 99

.class public InvokeStaticDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 2
  .limit locals 1

  bipush 99
  invokestatic java/lang/System/exit(I)V
  return
.end method

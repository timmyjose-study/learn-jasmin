; demonstrating invokevirtual - this program simply declares a class Point (in Point.j)
; and invokes the `length` method on an instance of `Point`.

.class public InvokeVirtualDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 5
  .limit locals 2

  new Point
  dup
  ldc 3.0
  ldc 4.0
  invokespecial Point/<init>(FF)V
  astore_1

  aload_1
  invokevirtual Point/length()F
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V
  return
.end method

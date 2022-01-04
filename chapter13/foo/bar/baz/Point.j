; definition of foo.bar.baz.Point

.class public foo/bar/baz/Point
.super java/lang/Object

.field public x I
.field public y I

.method public <init>(II)V
  .limit stack 3
  .limit locals 3

  aload_0
  invokespecial java/lang/Object/<init>()V

  aload_0
  iload_1
  putfield foo/bar/baz/Point/x I
  aload_0
  iload_2
  putfield foo/bar/baz/Point/y I
  return
.end method

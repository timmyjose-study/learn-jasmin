; create a new class (in Foo.j) with a single int field, populate that field, and display it via a non-static method.

.class public CustomClassDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 2

  ; create the Foo instance
  new Foo
  dup
  invokespecial Foo/<init>()V
  astore_1 ; load into local 1

  ; set the value of field `foo` to 12345
  aload_1
  ldc 12345
  invokevirtual Foo/setX(I)V

  ; load the value of field `foo` and print it
  getstatic java/lang/System/out Ljava/io/PrintStream;
  aload_1
  invokevirtual Foo/getX()I
  invokevirtual java/io/PrintStream/println(I)V

  return
.end method
; demo of getfield and getstatic
; uses foo/bar/baz/Point.j

.class public GetfieldDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 5
  .limit locals 3

  ; create a new point object
  new foo/bar/baz/Point
  dup
  sipush 100
  sipush 200
  invokespecial foo/bar/baz/Point/<init>(II)V
  astore_1

  ; print fields x and y of the point object
  aload_1
  getfield foo/bar/baz/Point/x I
  jsr printNum
  aload_1
  getfield foo/bar/baz/Point/y I
  jsr printNum
  goto done

printNum:
  astore_2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(I)V
  ret 2

done:
  return
.end method





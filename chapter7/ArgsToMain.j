; print the number of arguments passed to main

.class public ArgsToMain
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 1

  ; for non-static methods, local 0 is `this`, 
  ; and for static methods, its the first argument passed to it
  
  getstatic java/lang/System/out Ljava/io/PrintStream;
  aload_0 ; load the args array
  arraylength ; store the length of this array on the stack
  invokevirtual java/io/PrintStream/println(I)V ; prints the number of args passed to main
  return
.end method

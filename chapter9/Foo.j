; definition of class Foo.j 

.class Foo ; default visibility
.super java/lang/Object

.field private foo I

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public getX()I
  .limit stack 3
  .limit locals 1

  aload_0 ; load `this`
  getfield Foo/foo I
  ireturn 
.end method

.method public setX(I)V
  .limit stack 3
  .limit locals 3

  aload_0 ; load `this`
  iload_1 ; load the argument (integer)
  putfield Foo/foo I
  return
.end method

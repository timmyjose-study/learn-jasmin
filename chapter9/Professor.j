; definition of class Professor, used by InvokeSpecialDemo.j
;
;  class Professor extends Teacher {
;    void printAge() {
;      System.out.println(super.getAge());
;    }
;  }

.class public Professor
.super Teacher

.method public <init>()V
  aload_0
  invokespecial Teacher/<init>()V ; case 3
  return 
.end method

.method public printAge()V
  .limit stack 3
  .limit locals 1

  aload_0
  invokespecial Teacher/getAge()I ; case 3 (super method)
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(I)V
  return
.end method

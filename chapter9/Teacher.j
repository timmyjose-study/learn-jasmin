; definition of class Teacher - used by InvokeSpecialDemo.j
;
;  class Teacher {
;    private int actualAge() {
;      return 50;
;    }
;
;    public int getAge() {
;      return actualAge();
;    }
;  }
;

.class public Teacher
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return 
.end method

.method private actualAge()I
  .limit stack 2
  .limit locals 1

  bipush 50
  ireturn
.end method

.method public getAge()I
  .limit stack 2
  .limit locals 1

  aload_0
  invokespecial Teacher/actualAge()I ; case 2 (private method)
  ireturn
.end method

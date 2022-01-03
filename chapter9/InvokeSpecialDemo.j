; demo of invokespecial
;
; invokespecial is used in the following scenarios:
;   1. calling methods on `this`
;   2. calling private methods
;   3. calling `super` methods, and
;   4. calling constructors
; 
; Note - classes Teacher and Professor are defined in their respective files - Teacher.j and Professor.j

.class public InvokeSpecialDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V ; case 3
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 1

  ; create a teacher instance 
  new Teacher
  dup
  invokespecial Teacher/<init>()V ; case 4

  ; print getAge() on it
  invokevirtual Teacher/getAge()I
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(I)V

  ; create a new professor instance
  new Professor
  dup
  invokespecial Professor/<init>()V

  ; invoke printAge on it
  invokevirtual Professor/printAge()V
  return
.end method


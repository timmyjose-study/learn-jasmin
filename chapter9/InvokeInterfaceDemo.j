; demo of invokeinterface - check VectorEnumeration.java for equivalent code in Java.

.class public InvokeInterfaceDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 5

  ; create the vector
  new java/util/Vector
  dup
  invokespecial java/util/Vector/<init>()V
  astore_1

  ; push the elements
  iconst_1
  jsr addElement
  iconst_2
  jsr addElement
  iconst_3
  jsr addElement
  iconst_4
  jsr addElement
  iconst_5
  jsr addElement

  ; get the Enumeration<E> object
  aload_1
  invokevirtual java/util/Vector/elements()Ljava/util/Enumeration;
  astore_2

loop:
  aload_2
  invokeinterface java/util/Enumeration/hasMoreElements()Z 1
  ifeq back
  jsr showElement
  goto loop

back:
  return

addElement:
  astore_3
  aload_1
  swap

  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
  invokevirtual java/util/Vector/add(Ljava/lang/Object;)Z
  pop ; since add returns a boolean
  ret 3

showElement:
  astore 4
  aload_2
  invokeinterface java/util/Enumeration/nextElement()Ljava/lang/Object; 1
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(Ljava/lang/Object;)V
  ret 4
.end method
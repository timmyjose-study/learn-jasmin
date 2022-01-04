; demo of instanceof

.class public InstanceofDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 2

  new java/lang/String
  dup
  invokespecial java/lang/String/<init>()V
  astore_1

  aload_1
  instanceof java/lang/String
  ifeq printNotString

printString:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "String"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  goto done

printNotString:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "not a String"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  
done:
  return
.end method





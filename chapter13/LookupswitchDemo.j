; demo of lookupswitch

.class public LookupswtchDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 2
  .limit locals 3

  iconst_2
  istore_1

  iload_1
  lookupswitch ; apparently, the keys need to be in sorted order
    1 : label1
    2: label2 
    10: label10
    default: labelDefault

label1:
  ldc "One"
  jsr printStr
  goto done

label10:
  ldc "Ten"
  jsr printStr
  goto done

label2:
  ldc "Two"
  jsr printStr
  goto done

labelDefault:
  ldc "Some other number"
  jsr printStr
  goto done

printStr:
  astore_2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  ret 2

done:
  return
.end method





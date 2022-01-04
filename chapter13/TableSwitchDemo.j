; demo of tableswitch

.class public TableswitchDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 3

  iconst_5
  istore_1

  iload_1
  tableswitch 1 6
    label1
    label2
    label3
    label4
    label5
    label6
    default: labelDefault

label1:
  ldc "One"
  jsr printStr
  goto done

label2:
  ldc "Two"
  jsr printStr
  goto done

label3:
  ldc "Three"
  jsr printStr
  goto done

label4:
  ldc "Four"
  jsr printStr
  goto done

label5:
  ldc "Five"
  jsr printStr
  goto done

label6:
  ldc "Six"
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





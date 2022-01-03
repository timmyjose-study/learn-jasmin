; Jasmin equivalent of BasicThreadExample.java. 

.class BasicThreadExampleJasmin
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 3

  ; defined in MyThreadJasmin.j
  new MyThreadJasmin
  dup
  invokespecial MyThreadJasmin/<init>()V
  astore_1

  bipush 10
  istore_2

loop:
  aload_1
  invokevirtual MyThreadJasmin/syncMethod()V
  aload_1
  invokevirtual MyThreadJasmin/nonSyncMethod()V
  iload_2
  iinc 2 -1
  ifne loop

  return
.end method

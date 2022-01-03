; same program as LookupSwitchDemo.j, but done using `tableswitch` instead of `lookupswitch`.

.class public TableSwitchDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public tableswitchDemo()V
  .limit stack 3
  .limit locals 4

  new java/util/Scanner
  dup
  getstatic java/lang/System/in Ljava/io/InputStream;
  invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
  astore_1

  jsr readNum
  tableswitch 1 5 
    R1
    R2
    R3
    R4
    R5
    default: R6

R1:
  ldc "One"
  jsr printNum
  goto cleanup

R2:
  ldc "Two"
  jsr printNum
  goto cleanup

R3:
  ldc "Three"
  jsr printNum
  goto cleanup

R4:
  ldc "Four"
  jsr printNum
  goto cleanup

R5: 
  ldc "Five"
  jsr printNum
  goto cleanup

R6:
  ldc "Some other number"
  jsr printNum

cleanup:
  aload_1
  invokevirtual java/util/Scanner/close()V
  return

readNum:
  astore_2
  aload_1
  invokevirtual java/util/Scanner/nextInt()I
  ret 2

printNum:
  astore_3
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  ret 3
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 2

  new TableSwitchDemo
  dup
  invokespecial TableSwitchDemo/<init>()V
  astore_1

  aload_1
  invokevirtual TableSwitchDemo/tableswitchDemo()V
  return
.end method

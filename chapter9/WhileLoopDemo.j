; Demo of a while loop:
;
;  int c = 10;
;  while (c > 0) {
;   System.out.println("Hello ", c);
;   c--;
;  }
; return s;
;

.class public WhileLoopDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method private whileLoopDemo()V
  .limit stack 3
  .limit locals 3

  bipush 10 
  istore_1 ; c = 10
  goto end

start:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "Hello, "
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload_1
  invokevirtual java/io/PrintStream/println(I)V
  iinc 1 -1 ; c -= 1

end:
  iload_1 ; load c
  ifgt start ; if c > 0 loop

  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 2

  ; create instance of WhileLoopDemo
  new WhileLoopDemo
  dup
  invokespecial WhileLoopDemo/<init>()V
  astore_1 ; store instance in local 1

  ; invoke whileLoopDemo
  aload_1 ; load instance
  invokevirtual WhileLoopDemo/whileLoopDemo()V
  return
.end method
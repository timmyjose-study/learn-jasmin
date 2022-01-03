; Jasmin equivalent of MyThread.java

.class MyThreadJasmin
.super java/lang/Thread

.method <init>()V
  aload_0
  invokespecial java/lang/Thread/<init>()V
  return
.end method

.method public run()V
  .limit stack 1
  .limit locals 1
  return
.end method

.method synchronized syncMethod()V
  .limit stack 2
  .limit locals 1

  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "Hello from syncMethod"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  return
.end method

; since the JVM itself has no automatic protection against exceptions, it is advisable to 
; inject a generic exception handler that simply rethrows the exception
.method nonSyncMethod()V
  .limit stack 3
  .limit locals 2
  .catch java/lang/Exception from startProtected to endProtected using handler

startProtected:
  aload_0
  monitorenter

  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "Hello from nonSyncMethod"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

  aload_0
  monitorexit
endProtected:
  return

handler:
  astore_1
  aload_0 ; load `this`
  monitorexit ; release the monitor in case of exception
  aload_1
  athrow ; rethrow the exception
.end method

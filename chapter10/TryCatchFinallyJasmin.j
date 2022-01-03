; A full-fledged example of exception handling using Jasmin. Equivalent code - TryCatchFinally.java
;
; Note that the JVM does not have any special way to handle `finally`, and instead relies
; upon the compiler to generate the proper code to always activate the `finally` block
; whether it's:
; - a normal exit (save return value in a local variable, jsr to the finally block, return it)
; - break, continue et al (jsr to the finally block)
; - jump to a handler (jsr to the finally block from within the handler), or
; - missing handler (insert a default handler, jsr to the finally block, and rethrow the exception)
;
; So we must handle all these cases ourselves.

.class public TryCatchFinallyJasmin
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public test()V
  .limit stack 5
  .limit locals 5
  .catch java/io/FileNotFoundException from startFNF to endFNF using fnfHandler
  .catch java/io/IOException from startFNF to endIOE using ioeHandler
  .catch java/lang/Exception from startFNF to endIOE using genHandler ; this is needed when using `finally`

startFNF:
  new java/io/FileInputStream 
  dup
  ldc "myfile"
  invokespecial java/io/FileInputStream/<init>(Ljava/lang/String;)V
  astore_1
endFNF:
  goto done

fnfHandler:
  pop
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "no such file"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  goto done
endIOE:

ioeHandler:
  pop
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "IO exception"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  goto done

genHandler:
  astore 4
  jsr finalBlk
  aload 4
  athrow ; rethrow the exception

finalBlk:
  astore_2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "done"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  ret 2

done:
  jsr finalBlk
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 1

  new TryCatchFinallyJasmin
  dup
  invokespecial TryCatchFinallyJasmin/<init>()V
  invokevirtual TryCatchFinallyJasmin/test()V
  return
.end method

; Jasmin equivalent of MyException.java

.class MyExceptionJasmin
.super java/lang/Exception

.method public <init>(Ljava/lang/String;)V
  .limit stack 2
  .limit locals 2

  aload_0
  aload_1 ; the message
  invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
  return
.end method

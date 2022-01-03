; demo of `athrow` and `catch` - raise an exception and specify a handler
; to handle it, simply printing the message, "Exception caught".
;
; Usage of the directives:
;
; athrow
;
; .catch <Exeption Type> from Label1 to Label2 using Handler
;
; where Label1 to Label2 is the region protected by the handler Handler.

.class public Catcher
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return 
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 1

  .catch java/lang/Exception from Label1 to Label2 using Handler

Label1: ; Start of the protected block
  ; let's create an exception and throw it
  new java/lang/Exception
  dup
  invokespecial java/lang/Exception/<init>()V
  athrow
Label2: ; End of the protected block

; this line will never be reached
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Hello, world!"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

Handler: ; the handler for the protected block

  ; the athrow instruction dumps the exception instance on the stack 
  ; in this case, we don't need it, so pop it off the stack
  pop

  ; let's simply print our message and return
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "Exception caught!"
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  return
.end method

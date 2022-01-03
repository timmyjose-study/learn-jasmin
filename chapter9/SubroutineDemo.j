; A subroutine is basically a sort of "light-weight" method/function. It doesn't have its own
; stackframe/activation record, but shares that of its parent method/function.
;
; A subroutine is invoked using `jsr` and returned from using `ret`.
;

.class SubroutineDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method demoPrintSubroutine()V
  .limit stack 3
  .limit locals 2

  ldc "Hello, world!"
  jsr printString

  ldc "Hola, mundo!"
  jsr printString

  ldc "Privet, Mir!"
  jsr printString 
  return

printString:
  ; note that the `jsr` instruction leaves the return address for the subroutine
  ; on the top of the stack
  ; we need to store it so that it can be used by the `ret` instruction to return
  ; to where it was called from

  astore_1 ; store the return address

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap ; we need to swap here since the string to be printed is just below `out` from the previous step
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

  ret 1 ; return to the address stored in local 1
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 2

  new SubroutineDemo
  dup
  invokespecial SubroutineDemo/<init>()V
  astore_1

  aload_1
  invokevirtual SubroutineDemo/demoPrintSubroutine()V
  return
.end method

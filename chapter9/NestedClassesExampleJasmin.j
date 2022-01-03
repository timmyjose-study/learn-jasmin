; attempt to develop an equivalent for NestedClassesExample.java, directly in bytecode,
; in a single Jasmin source file.

.class public NestedClassesExampleJasmin
.super java/lang/Object

;.class NestedClassesExampleJasmin$StaticClass
;.super java/lang/Object

.method public static main([Ljava/lang/String;)
  .limit stack 1
  .limit locals 1
  return
.end method

;.class NonPublicClassJasmin
;.super java/lang/Object

Creating an object:

  new T
  dup ; since the constructor consumes it and leaves nothing behind, but both references are aliases, so this works fine
  invokespecial T/<init>()V
  astore_1 ; store object reference in local 1

Eg:
  new java/lang/StringBuffer
  dup
  invokespecial java/lang/StringBuffer/<init>()V
  astore_1


Creating fields:

  .field <modifier> <full name> <type>

Eg;

  .field private HelloWeb/font Ljava/awt/Font;


Retrieve and set fields:

putfield      set value of object field

getfield      get value of object field

putstatic     set value of static field

getstatic     get value of static field


general format - get/putX <class name> <field name> <type descriptor> [<value>]

Eg:

  ; get the static PrintStream object out in java.lang.System
  getstatic java/lang/System/out Ljava/io/PrintStream;
  aload_0 ; load `this`, an instance of `HelloWeb`
  getfield HelloWeb/font Ljava/awt/Font; ; load field `font` in `HelloWeb`


Miscellaneous object operations:


checkcast     ensure object or array belongs to the specified type ; basically a casting operation

instanceof    test if object or array belongs to the specified type

Eg:

  aload_0
  instance java/lang/Thread

  aload_0
  instanceof [I

  aload_0
  checkcast java/lang/Throwable ; success - leave object cast to java.lang.Throwable, failure - ClassCastException

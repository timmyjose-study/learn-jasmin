## Monitor Instructions

monitorenter      enter synchronized region of code

monitorexit       exit synchronized region of code

Eg:
    void myMethod(Object obj) {
      synchronized(obj) {
        // ...
      }
    }

translates to

    .method myMethod(Ljava/lang/Object;)V
      aload_1
      monitorenter
      ; ...
      aload_1
      monitorexit
    .end method


## Synchronized Methods

The code

    class SyncExample {
      synchronized void s() {
        // ...
      }
    }

translates to 

    .class SyncExample
    .super java/lang/Object

    .method synchronized s()V
      ; ...
    .end method
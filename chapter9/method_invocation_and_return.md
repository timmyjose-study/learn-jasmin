## Table Invocation and Return

invokevirtual     call an instance method, this is for polymorphism

invokestatic      call a class (static) method

invokespecial     call method belonging to a specific class (constructors, for example)

invokeinterface   call an interface method

invokedynamic     call a dynamic method on an instance  (useful for lambdas, which desugar to static methods invoked via invokedynamic instead of inner-classes)


## Return instructions

ireturn     return from a method with an integer result

lreturn     return from a method with a long result

freturn     return from a method with a float result

dreturn     return from a method with a double result

areturn     return from a method with a reference result

return      return from a method with no result (void)

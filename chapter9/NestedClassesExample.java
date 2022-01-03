// example code to see how nested classes and static classes are generated 
// in the bytecode.

// public class NestedClassesExample, has metadata about nested classes, ACC_PUBLIC, ACC_SUPER
public class NestedClassesExample {
  // NestedClassExample$StaticClass, ACC_SUPER
  static class StaticClass {
  }

  // NestedClassesExample$PrivateNonStaticClass
  private class PrivateNonStaticClass {
  }

  // NestedClassesExample$DefaultNonStaticClass
  class DefaultNonStaticClass {
  }

  public static void main(String[] args) {
  }
}

// class NonPublicClass, ACC_SUPER
class NonPublicClass {
}

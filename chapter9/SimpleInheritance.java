// class to inspect how inheritance information is stored in the bytecode, and 
// how it can be replicated using Jasmin.

public class SimpleInheritance {
  public static void main(String[] args) {
    Foo foo = new Foo();
    System.out.println(foo.getFoo());

    Bar bar = new Bar();
    bar.printFoo();
  }
}

class Foo {
  private int actualFoo() {
    return 100;
  }

  public int getFoo() {
    return actualFoo();
  }
}

class Bar extends Foo {
  public void printFoo() {
    System.out.println(super.getFoo()); // invokespecial
  }
}

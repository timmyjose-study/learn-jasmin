public class MultClasses {
  public static void main(String[] args) {
    Bar foo = new Bar();
    foo.setX(100);
    System.out.println(foo.getX());
  }
}

class Bar {
  private int x;

  public int getX() {
    return x;
  }

  public void setX(int x) {
    this.x = x;
  }
}

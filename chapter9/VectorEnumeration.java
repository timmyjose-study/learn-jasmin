import java.util.Vector;
import java.util.Enumeration;

public class VectorEnumeration {
  public static void main(String[] args) {
    Vector<Integer> vec = new Vector<>();
    vec.add(1);
    vec.add(2);
    vec.add(3);
    vec.add(4);
    vec.add(5);

    for (Enumeration<Integer> e = vec.elements(); e.hasMoreElements();) {
      System.out.println(e.nextElement());
    }
  }
}

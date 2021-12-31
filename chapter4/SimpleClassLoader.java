import java.lang.reflect.Constructor;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class SimpleClassLoader extends ClassLoader {
  private Map<String, Class<?>> loadedClasses = new HashMap<>();
  private Set<String> resolvedClasses = new HashSet<>();
  private int indentLevel = 0;

  @Override
  protected Class<?> loadClass(String className, boolean resolveIt) throws ClassNotFoundException {
    print("loadClass(\"" + className + "\", " + resolveIt + ") : ");
    printIndent(1);

    Class<?> clazz = null;
    try {
      if (loadedClasses.containsKey(className)) {
        print("(already loaded class " + className + ")");
      } else if (className.startsWith("java")) {
        print("findSystemClass " + className);
        printIndent(1);
        clazz = findSystemClass(className);
        printIndent(-1);
      } else  {
        byte[] classBytes = getClassFile(className);
        print("defineClass " + className);
        printIndent(1);
        clazz = defineClass(className, classBytes, 0, classBytes.length);
        printIndent(-1);
      }

      if (clazz != null) {
        loadedClasses.put(className, clazz);
      }
    } catch (IOException ex) {
      System.err.println(ex.getLocalizedMessage());
      throw new ClassNotFoundException(className);
    }

    if (resolveIt && !resolvedClasses.contains(className)) {
      print("resolveClass " + className);
      printIndent(1);
      resolveClass((Class)loadedClasses.get(className));
      printIndent(-1);
      resolvedClasses.add(className);
    }

    return clazz;
  }

  private byte[] getClassFile(String className) throws IOException {
    FileInputStream fin =  new FileInputStream(className.replace('.', File.separatorChar) + ".class");
    byte[] classBytes = new byte[fin.available()];
    fin.read(classBytes);
    fin.close();

    return classBytes;
  }

  private void print(String str) {
    for (int i = indentLevel; i > 0; i--) {
      System.out.print(" ");
    }

    System.out.println(str);
  }

  private void printIndent(int level) {
    indentLevel += level;
  }

  public static void main(String[] args) {
    try {
      System.out.println("Testing out the SimpleClassLoader");
      SimpleClassLoader loader = new SimpleClassLoader();
      Class<?> myself = loader.loadClass("SimpleClassLoader", true); // resolve it
      System.out.println("Making a new instance of the loaded class");
      SimpleClassLoader scl = (SimpleClassLoader)SimpleClassLoader.class.getConstructors()[0].newInstance();
    } catch (Throwable err) {
      System.err.println(err.getLocalizedMessage());
    }
  }
}
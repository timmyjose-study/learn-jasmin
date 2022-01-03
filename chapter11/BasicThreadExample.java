public class BasicThreadExample {
  public static void main(String[] args) {
    for (int i = 0; i < 10; i++) {
      MyThread t = new MyThread();
      t.syncMethod();
      t.nonSyncMethod();
    }
  }
}

class MyThread extends Thread {
  @Override
  public void run() {
  }

  public synchronized void syncMethod() {
    System.out.println("Hello from syncMethod");
  }

  public void nonSyncMethod() {
    synchronized(this) {
      System.out.println("Hello from nonSyncMethod");
    }
  }
}

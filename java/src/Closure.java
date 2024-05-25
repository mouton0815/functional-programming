@java.lang.FunctionalInterface
interface Counter {
    int inc();
}

public class Closure {
    static Counter makeCounter() {
        final int[] container = { 0 };
        return () -> (++container[0]);
    }
    public static void main(String[] args) {
        Counter counter = makeCounter();
        System.out.println(counter.inc());
        System.out.println(counter.inc());
        System.out.println(counter.inc());
    }
}
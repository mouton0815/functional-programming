@java.lang.FunctionalInterface
interface Greeter {
    String greet();
}

public class Function implements Greeter {
    @Override
    public String greet() {
        return "Hello";
    }

    public static void main(String[] args) {
        Greeter g = new Function();
        System.out.println(g.greet());
    }
}

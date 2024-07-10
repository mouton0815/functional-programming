import java.util.stream.Stream;

class Lazy {
    public static void main(String[] args) {
        var iterator = Stream.iterate(0, n -> n + 1);
        var element = iterator
                .filter(n -> n >= 2)
                .findFirst()
                .orElse(null);
        System.out.println(element); // 2
    }
}

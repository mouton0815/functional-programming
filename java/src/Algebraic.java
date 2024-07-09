public class Algebraic {

    sealed interface Maybe {
        record Nothing() implements Maybe {}
        record Just<T>(T value) implements Maybe {}
    }

    private static Maybe getValue() {
        return new Maybe.Just<>(5);
    }

    public static void main(String[] args) {
        switch (getValue()) {
            case Maybe.Nothing _ -> System.out.println("Nothing");
            case Maybe.Just<?> v -> System.out.println(v.value);
        }
    }
}

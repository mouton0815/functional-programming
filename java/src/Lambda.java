import java.util.List;

public class Lambda {
    public static void main(String[] args) {
        List<Integer> list = List.of(1, 3, 5);
        list.forEach((i) -> System.out.println(i)); // I know this can be simplified :)
    }
}

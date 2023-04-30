public class Application {
    public static void main(String[] args) {
        int iterCount = Integer.parseInt(args[0]);
        int[] numbers = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

        for (int i = 0; i < iterCount; ++i) {
            findMax(numbers);
        }
    }
    
    public static int findMax(int[] arr) {
        int max = 0;
        for (int n : arr) {
            max = n > max ? n : max;
        }

        return max;
    }
}
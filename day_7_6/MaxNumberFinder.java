
public class MaxNumberFinder {

    public static void main(String[] args) {

        int[] numbers = {28, 5, 25, 8, 15};

        int max = 0;

        for (int i = 0; i < numbers.length; i++) {
            if (numbers[i] > max) {
                max = numbers[i];
            }
        }
        System.out.println("Maximum number is: " + max);
    }

}
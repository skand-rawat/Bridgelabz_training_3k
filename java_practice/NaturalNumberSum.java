class NaturalNumberSum {
    public static int sumNaturalNumbers(int n) {
        int sum = 0;
        for (int i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }

    public static void main(String[] args) {
        int n = 10;
        int sum = sumNaturalNumbers(n);
        System.out.println("Sum of first " + n + " natural numbers = " + sum);
    }
}

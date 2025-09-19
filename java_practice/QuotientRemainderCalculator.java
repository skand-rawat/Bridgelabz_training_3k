class QuotientRemainderCalculator {
    public static int[] findRemainderAndQuotient(int number, int divisor) {
        return new int[]{number % divisor, number / divisor};
    }

    public static void main(String[] args) {
        int number = 29, divisor = 5;
        int[] result = findRemainderAndQuotient(number, divisor);
        System.out.println("Number = " + number + ", Divisor = " + divisor);
        System.out.println("Quotient = " + result[1] + ", Remainder = " + result[0]);
    }
}

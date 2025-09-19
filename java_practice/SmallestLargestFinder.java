class SmallestLargestFinder {
    public static int[] findSmallestAndLargest(int a, int b, int c) {
        int smallest = Math.min(a, Math.min(b, c));
        int largest = Math.max(a, Math.max(b, c));
        return new int[]{smallest, largest};
    }

    public static void main(String[] args) {
        int a = 12, b = 45, c = 7;
        int[] result = findSmallestAndLargest(a, b, c);
        System.out.println("Smallest = " + result[0] + ", Largest = " + result[1]);
    }
}

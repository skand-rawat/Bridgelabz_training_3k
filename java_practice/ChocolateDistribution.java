class ChocolateDistribution {
    public static int[] distributeChocolates(int chocolates, int children) {
        return new int[]{chocolates % children, chocolates / children};
    }

    public static void main(String[] args) {
        int chocolates = 25, children = 4;
        int[] result = distributeChocolates(chocolates, children);
        System.out.println("Each child gets " + result[1] + " chocolates, Remaining = " + result[0]);
    }
}

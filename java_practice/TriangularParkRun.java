class TriangularParkRun {
    public static double calculateRounds(int side1, int side2, int side3, double distance) {
        double perimeter = side1 + side2 + side3;
        return distance / perimeter;
    }

    public static void main(String[] args) {
        int side1 = 100, side2 = 150, side3 = 200; 
        double distance = 5000; 

        double rounds = calculateRounds(side1, side2, side3, distance);
        System.out.println("Athlete must complete " + Math.ceil(rounds) + " rounds to cover 5 km.");
    }
}

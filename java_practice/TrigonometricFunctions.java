class TrigonometricFunctions {
    public static double[] calculateTrigonometricFunctions(double angle) {
        double radians = Math.toRadians(angle);
        return new double[]{Math.sin(radians), Math.cos(radians), Math.tan(radians)};
    }

    public static void main(String[] args) {
        double angle = 45;
        double[] result = calculateTrigonometricFunctions(angle);
        System.out.println("For angle " + angle + "° : sin=" + result[0] +
                ", cos=" + result[1] + ", tan=" + result[2]);
    }
}

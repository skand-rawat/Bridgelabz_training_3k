class WindChillCalculator {
    public static double calculateWindChill(double temp, double windSpeed) {
        return 35.74 + 0.6215 * temp + (0.4275 * temp - 35.75) * Math.pow(windSpeed, 0.16);
    }

    public static void main(String[] args) {
        double temp = 30, windSpeed = 10;
        double wc = calculateWindChill(temp, windSpeed);
        System.out.println("Wind chill at Temp " + temp + "F and Wind Speed " + windSpeed + " mph = " + wc);
    }
}

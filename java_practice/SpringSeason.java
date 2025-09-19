class SpringSeason {
    public static boolean isSpring(int month, int day) {
        return (month == 3 && day >= 20) ||
               (month > 3 && month < 6) ||
               (month == 6 && day <= 20);
    }

    public static void main(String[] args) {
        int month = 4, day = 15; 
        boolean spring = isSpring(month, day);
        System.out.println("Date " + month + "/" + day + 
            (spring ? " is a Spring Season." : " is NOT a Spring Season."));
    }
}

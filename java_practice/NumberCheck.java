class NumberCheck {
    public static int checkNumber(int num) {
        if (num < 0) return -1;
        else if (num > 0) return 1;
        else return 0;
    }

    public static void main(String[] args) {
        int num = -5;
        int result = checkNumber(num);
        System.out.println("Number " + num + " check result = " + result);
    }
}

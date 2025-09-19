class HandshakeCalculator {
    public static int calculateHandshakes(int students) {
        return (students * (students - 1)) / 2;
    }

    public static void main(String[] args) {
        int students = 10;
        int handshakes = calculateHandshakes(students);
        System.out.println("Maximum number of handshakes among " + students + " students = " + handshakes);
    }
}

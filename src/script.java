public class script {
    public static void main(String[] args) {
        app circle = new app(5);
        style square = new style(4, 0, 0);

        System.out.println("Area of Circle: " + circle.area());
        System.out.println("Area of Square: " + square.area());
    }
}
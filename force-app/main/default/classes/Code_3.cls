public class Code_3 {
    public static void main() {
        Decimal length = 10; 
        Decimal breadth = 5; 
        Decimal radius = 7; 
        Decimal rectangleArea = length * breadth;
        Decimal rectanglePerimeter = 2 * (length + breadth);
        Decimal circleArea = Math.PI * radius * radius;
        Decimal circleCircumference = 2 * Math.PI * radius;
        System.debug('Rectangle Area: ' + rectangleArea);
        System.debug('Rectangle Perimeter: ' + rectanglePerimeter);
        System.debug('Circle Area: ' + circleArea);
        System.debug('Circle Circumference: ' + circleCircumference);
    }
}
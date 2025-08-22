public class SimpleCalculator {
    
    public static Integer add(Integer a, Integer b) {
        return a + b;
    }
    
    public static Integer subtract(Integer a, Integer b) {
        return a - b;
    }
    
    public static Integer multiply(Integer a, Integer b) {
        return a * b;
    }
    
    public static Decimal divide(Integer a, Integer b) {
        if (b == 0) {
            System.debug('Division by zero is not allowed.');
            return null;
        }
        return Decimal.valueOf(a) / Decimal.valueOf(b);
    }
}
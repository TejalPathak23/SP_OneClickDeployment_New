public class FactorialCalculator {
    
    public static Integer factorial(Integer n) {
        if (n < 0) {
            System.debug('Factorial not defined for negative numbers');
            return null;
        }
        Integer result = 1;
        for (Integer i = 1; i <= n; i++) {
            result = result * i;
        }
        return result;
    }
}
// 2 June 2024
public class Code_4 {
    public static Integer findLargestElement(Integer[] arr) {
        if (arr == null || arr.size() == 0) {
            return null;
        }
        Integer maxElement = arr[0];
        for (Integer i = 1; i < arr.size(); i++) {
            if (arr[i] > maxElement) {
                maxElement = arr[i];
            }
        }
        return maxElement;
    }
}

// ----------------------------------- Code to Execute ------------------------------------------------------
/*
Integer[] numbers = new Integer[]{3, 5, 7, 2, 8, 1, 9, 4};

Integer largest = Code_4.findLargestElement(numbers);

System.debug('The largest element is: ' + largest);
*/
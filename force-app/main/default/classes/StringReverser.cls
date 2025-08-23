public class StringReverser {

    public static String reverseText(String inputText) {
        String reversed = '';
        for (Integer i = inputText.length() - 1; i >= 0; i--) {
            reversed += inputText.substring(i, i+1);
        }
        return reversed;
    }
}
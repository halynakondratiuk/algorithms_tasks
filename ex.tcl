public class MyClass {
    public static String checkIsomorphicWords(String str1, String str2) {
        Map<Integer, Integer> indexes1 = new HashMap<Integer, Integer>();
        Map<Integer, Integer> indexes2 = new HashMap<Integer, Integer>();
        int size1 = str1.length();
        int size2 = str2.length();
        
        if (size1 != size2)
            return "Different length of strings.";
            
        for (int h = 0; h < size1; h++) {
            if (Character.isDigit(str1.charAt(h)) || Character.isDigit(str2.charAt(h)))
                return "String contains numbers.";
        }
        
        for (int i = 0; i < size1; i++) {
            for (int k = i+1; k < size1; k++) {
                if (str1.charAt(i) == str1.charAt(k))
                    indexes1.put(i, k);
            }
        }
        
        for (int j = 0; j < size2; j++) {
            for (int l = j+1; l < size2; l++) {
                if (str2.charAt(j) == str2.charAt(l))
                    indexes2.put(j, l);
            }
        }

         return String.format("Are words isomorphic? - %s",  indexes1.equals(indexes2));
    }
    
     public static void firstUniqueEl(String str) {
        StringBuilder newStr = new StringBuilder(str);
        int size = newStr.length();
        char ch = '\0';

        boolean flag ;
        for(int i = 0; i < size; i++) {
            flag = true;
            for (int j = 0; j < size; j++)
            if (i!=j && newStr.charAt(i) == newStr.charAt(j)) {
                flag = false;
                break;
                
            }
            if (flag == true) {
                ch = newStr.charAt(i);
                break;
            }
        }
        System.out.println(ch);
    }

      public static boolean palindromeString(String str) {
        int size = str.length() - 1;
        boolean isPalindrome = true;
        
        for (int i = 0; i <= Math.ceil(size/2); i++) {
            if (str.charAt(i) != str.charAt(size))
                return false;
            size--;
        } 
        
       return isPalindrome;
    
    }
    
    public static boolean palindromeNumber(int num) { 
        int operateNum = num;
        int receivedNum = 0;
        
        while(operateNum != 0) {
            receivedNum = receivedNum*10 + (operateNum % 10);
            operateNum = operateNum / 10;
        }
        
        return (num == receivedNum) ? true : false;
    }

     public static void uniqueEl(int[] numbers) {
        int temp = 0;
        for (int i=0; i < numbers.length; ++i) {
            int j;
            for (j=0; j < numbers.length; ++j) {
                if (i!=j && numbers[i]==numbers[j]) {
                    break;
                }
            }
            if(j==numbers.length)
            System.out.println(numbers[i]);
        }
    }

     public static void changeElement(String str)  
    { 
        StringBuilder newStr = new StringBuilder();
        String[] s = str.split(" ");
        String temp = "";
        int size = s.length - 1;
        for(int i=0; i <= Math.ceil(size/2) ; i++) {
            temp=s[i];
            s[i] = s[size];
            s[size] = temp;
            size --;
        }
        System.out.println(Arrays.toString(s));
        //  for(int i=0; i<s.length; i++){
        //     System.out.println(s[i]);
        // }
    }

    public static void bubbleSort(int[] arr) {
        int temp = 0;
        for(int i = 0; i < arr.length; i++) {
            for(int j = 0; j < arr.length-1; j++) {
                if (arr[j] > arr[j+1]) {
                    temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                }
            }
        }
        for(int i=0; i<arr.length; i++){
            System.out.println(arr[i]);
        }
    }
    public static void main(String args[]) {
        int x=10;
        int y=25;
        int z=x+y;
        int[] array = {2,6,5,7,4};
        MyClass.bubbleSort(array);

        System.out.println("Sum of x+y = " + z);
    }
}

public class MyClass {
    public static void palindrome(String str) {
        String newStr = "";
        for(int i = str.length()-1; i >=0 ; i--) {
            newStr = newStr+str.charAt(i);
        }
        System.out.println(newStr);
        if(str.equals(newStr)){
            System.out.println(str+" is palindrome");
        } else {
            System.out.println(str+" is not palindrome");
        }
    }
    public static void main(String args[]) {
        int x=10;
        int y=25;
        int z=x+y;
        String str = "Halyna";
        MyClass.palindrome(str);

        System.out.println("Sum of x+y = " + z);
    }
}

public static void reverseStringByWords(String string) {
    StringBuilder stringBuilder = new StringBuilder();
    String[] words = string.split(" ");

    for (int j = words.length-1; j >= 0; j--) {
        stringBuilder.append(words[j]).append(' ');
    }
    System.out.println("Reverse words: " + stringBuilder);
}


import java.util.Scanner;

public class Quiz3 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		System.out.println("두개의 정수를 입력하세요.");
		
		int num1 = s.nextInt();
		int num2 = s.nextInt();
		int num3 = num1 / num2;
		int num4 = num1 % num2;

        System.out.println(num1 + " 나누기 " + num2 + "의 몫은 " + num3 + " 입니다");
        System.out.println(num1 + " 나누기 " + num2 + "의 나머지는 " + num4 + " 입니다");
	
	}

}
import java.util.Scanner;

public class Quiz1 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		System.out.println("첫번째 숫자를 입력하세요.");
		
		int num1 = s.nextInt();
		
        System.out.println("두번째 숫자를 입력하세요.");
		
		int num2 = s.nextInt();

		System.out.println(num1 + " + " + num2 + " = " + (num1 + num2));
		if(num1 > num2) {
			System.out.println(num1 - num2);
		} else {
			System.out.println(num1 + num2);
		}
		System.out.println(num1 + " - " + num2 + " = " + (num1 - num2));
		System.out.println(num1 + " * " + num2 + " = " + (num1 * num2));
		System.out.println(num1 + " / " + num2 + " = " + (num1 / num2));
	}

}

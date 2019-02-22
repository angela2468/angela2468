import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class FibonacciCalculator {
	
	public void start() {
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("Fibonacci Generatore XD");
		
		System.out.println("Please enter your first number: ");
		
		int firstNumber = scanner.nextInt();
		
		System.out.println("Please enter your second number: ");
		
		int secondNumber = scanner.nextInt();
		
		
		System.out.println("Please enter your number of terms");
		
		int numberOfTerms = scanner.nextInt();
		
		
		String result = calculateFibonacci(firstNumber, secondNumber, numberOfTerms);
		
		System.out.println("Fibonacci series: " + result);
	}
	
	public String calculateFibonacci(int firstNumber, int secondNumber, int numberOfTerms) {
		 
		ArrayList<Integer> fibSeries = new ArrayList<>();
		fibSeries.add(firstNumber);
		fibSeries.add(secondNumber);
		int append = numberOfTerms - 3;
		for (int x = 0; x <= append; x++) {
			int newNumber = fibSeries.get(x) + fibSeries.get(x+1);
			fibSeries.add(newNumber);
		}
		
		List<Float> GoldenRatioApprox = new ArrayList<>();
		for (int i = 0; i <numberOfTerms-1;i++ ) {
			float newNumber2 = (float)fibSeries.get(i+1) / (float)fibSeries.get(i);
			GoldenRatioApprox.add(newNumber2);
		}
		
		
		
		return "Fibonacci Series: "+ fibSeries.toString() + "Golden Ratio Approximation: " +GoldenRatioApprox.toString();

	}

}


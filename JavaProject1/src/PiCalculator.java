import java.util.ArrayList;
import java.util.Scanner;

public class PiCalculator {
	public void start() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Pi Approximation XD");
		System.out.println("Type in the number of terms you need in the calc series.");
		System.out.println("Ther greater the number you choose, the better the approximation");
		
		System.out.println("Type in the number here: ");
		int numberOfTerms2 = scanner.nextInt();
		
		
		String result2 = calculatePi( numberOfTerms2);
		
		System.out.println("Pi Approximation: " + result2);
		
	}
	public String calculatePi(int numberOfTerms2) {
		
		//4/(nth = 2n-1)
		ArrayList<Float> Series = new ArrayList<>();
		//ArrayList<Float> odd_no = new ArrayList<>();
		float start_no = 4;
		Series.add(start_no);
		
		float total = start_no;
		
		
		for (int z = 2; z <numberOfTerms2+1;z++ ) {
			float odd_term = (2*z)-1;
			float new_term = start_no/odd_term;
			//odd_no.add(odd_term);
			Series.add(new_term);
			if (z%2 ==0){
				new_term = -1*new_term;
			}
			total += new_term;
		}
		
		return "Pi approximation: " + total + "  Sequence used: " +Series.toString();

	}

	
}

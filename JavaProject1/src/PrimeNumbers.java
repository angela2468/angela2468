import java.util.ArrayList;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;


public class PrimeNumbers {
	public void start() {
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Prime Number Generator XD");
		System.out.println("Using Wilson's Theorem...");
		
		//System.out.println("Enter an integer here: ");
		//int n = scanner.nextInt();
		System.out.println("Enter the number of terms here: ");
		int no_of_terms_ = scanner.nextInt();
		
		String result3 = calculatePrime(no_of_terms_);
		System.out.println("Prime No: " + result3);
		
	}
	public String calculatePrime(int no_of_terms_ ) {
		Set<Integer> Prime_Numbers_set = new HashSet<>();
		
		
		for (int n = 1; n <no_of_terms_+1;n++ ) {
			int nfactorial = 1;
			
			for (int i=1; i<=n; i++) {
				
				
				nfactorial = nfactorial*i;
			}
			int prime_number = (((nfactorial%(n+1))/n)*(n-1))+2;
			Prime_Numbers_set.add(prime_number);
		}
		
		
		return "prime: " + Prime_Numbers_set.toString() ;

	}	

	
	
	
	}

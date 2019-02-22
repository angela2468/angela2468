import java.util.Scanner;

public class Roots_of_Polynomials {
	public void start() {
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("Roots of Polynomials! XD");
		System.out.println("We'll start with the basic: Quadratic Equations");
		System.out.println("Below, please enter the coefficients of the equation");
		System.out.println("in the form of ax^2 bx + c");
		
		System.out.println("Please enter a:");
		float a = scanner.nextInt();
		System.out.println("Please enter b:");
		float b = scanner.nextInt();
		System.out.println("Please enter c:");
		float c = scanner.nextInt();
		
        String result = finding_roots(a, b, c);
		
		System.out.println("roots: " + result);
		
}
	public String finding_roots(float a,float b, float c) {
		float sum_roots = (-1*b)/a;
		float product_roots = c/a;
		float discriminant = b*b -(4*a*c);
		if (discriminant <0) {
			String real_complex = "Does not have any real roots.";	
		}
		else if (discriminant ==0) {
			String real_complex = "Only has one repeated root.";
		}
		else if (discriminant >0) {
			String real_complex = "Has two real roots.";
		}
		
		return "Sum of Roots: " +  sum_roots + "  Product of roots: " + product_roots + "  Discriminant: " + discriminant ;

	}}

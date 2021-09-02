package example;
/**
 * <p>
 * This is the salutation class.
 * </p>
 * 
 * <p>
 * A class to abstract salutations in our program
 * </p>
 * 
 * <p>
 * Example usage:
 * </p>
 * 
 * <pre>
 * Salute salute = new Salute("Alfonso");
 * salute.informal();
 * </pre>
*/
public class Salute {

	/**
	The person we are saluting
	*/
	public String salutee;

	/**
	 * <p>
	 * The standard constructor
	 * </p>
	 * @param salutee the person that will be saluted
	 * @since 1.0	
	*/
	public Salute(String salutee) {
		this.salutee = salutee;
	}

	/**
	 * <p>
	 *  A simple salute to the <em>salutee</em>
	 * </p>
	 * @since 1.0	
	*/
	public void informal() {
        	System.out.println("Hello, " + salutee + "!"); 
	} 

	/**
	 * <p>
	 *  A formal salute to the <em>salutee</em>
	 * </p>
	 * @param title the title used in front of the saalutee. Used to make the salutation
         *        more formal
	 * @since 1.0	
	*/
	public void formal(String title) {
        	System.out.println("Hello, " + title + "" + salutee + ". Have a wonderful day."); 
	} 
}

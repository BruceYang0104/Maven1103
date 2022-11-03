package beans;

	public class GuessGameLogic {
		  private int theNumber;
		  private int remainder = 5;
		  private String hint;
		  
		  //constructor
		  public GuessGameLogic() {}
		  
		  //method
		  public void initialize(int startNumber, int endNumber) {
		    this.theNumber = generateRandomNumber(startNumber , endNumber);
		  }
		  
		  public boolean isCorrectGuess(int guess) 
		  {
		    if(guess == theNumber) 
		    {
		      return true;
		    } 
		    else 
		    { 
		      if(guess > theNumber)
		        hint="Your number "+guess+" Guess Number too Big";
		      
		      else
		        hint="Your number "+guess+" Guess Number too Small";       
		      	remainder--;
		      return false;
		    }
		  }
		  
		  private int generateRandomNumber(int startNumber, int endNumber) 
		  {
		    double range = (double) (endNumber - startNumber + 1);
		    return startNumber + (int) (Math.random() * range);
		  }
		  
		  public int getRemainder() 
		  {
		    return remainder;
		  }
		  
		  public String getHint()
		  {
		    return hint;
		  }
	
	
}

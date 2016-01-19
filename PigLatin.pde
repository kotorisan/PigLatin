import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
{
    String kuro = "aeiou";
    for (int umi = 0; umi < sWord.length(); umi++) //no vowel rule
    {
    	for (int miyu = 0; miyu < kuro.length(); miyu++)
    	{
    		if (sWord.substring(umi,umi+1).equals(kuro.substring(miyu,miyu+1)))
    		{
    			return umi; //returning index
    		}
    	}
    }
    return -1;

}

public boolean checkQu(String sWord)
{
	if (sWord.substring(0,2).equals("qu")) //qu rule
    {
    	return true;
    }
    return false;
}


public String pigLatin(String sWord)
{

	if (findFirstVowel(sWord) == -1) //no vowel rule
	{
		return sWord + "ay";
	}
	else if (findFirstVowel(sWord) == 0) // first letter vowel rule
	{
		return sWord + "way";
	}
	else if (checkQu(sWord) == true) //qu rule
	{
		return sWord.substring(2,sWord.length()) + "quay";
	}
	else if (findFirstVowel(sWord) > 0) //constant rule
	{
		return sWord.substring(findFirstVowel(sWord),sWord.length()) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}

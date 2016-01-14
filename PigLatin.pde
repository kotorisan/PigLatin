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
    for (int umi = 0; umi < sWord.length(); umi++)
    {
    	for (int miyu = 0; miyu < kuro.length(); miyu++)
    	{
    		if (sWord.substring(umi,umi+1).equals(kuro.substring(miyu,miyu+1)))
    		{
    			return umi; //returning index
    		}
    		return -1;
    	}
    }
    if (sWord.substring(0,2).equals("qu"))
    {
    	return 1;
    }
}

public String pigLatin(String sWord)
{

	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if (findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if (findFirstVowel(sWord) == 2)
	{
		//add the qu rule
	}
	else
	{
		return "ERROR!";
	}
}

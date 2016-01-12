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
  int koe = -1;
    for (int umi = 0; umi < sWord.length(); umi++)
    if (sWord.substring(umi,umi+1).equals("a"))
        return umi;
      else if (sWord.substring(umi,umi+1).equals("e"))
        return umi;
      else if (sWord.substring(umi,umi+1).equals("i"))
        return umi;
      else if (sWord.substring(umi,umi+1).equals("o"))
        return umi;
      else if (sWord.substring(umi,umi+1).equals("u"))
        return umi;
   	return koe;
}

public String pigLatin(String sWord)
{

	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else
	{
		return "ERROR!";
	}
}

public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int x=0; x < lines.length; x++) 
  {
    if(palindrome(lines[x])==true)
    {
      println(lines[x] + " IS a palidrome.");
    }
    else
    {
      println(lines[x] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(reverse(noSpaces(numLetters(noCapitals(word)))).equals(noSpaces(numLetters(noCapitals(word)))))
    return true;
  else 
    return false;
}
public String reverse(String str)
{

  String sNew = new String();
  int newFirst=str.length()-1;
  for(int x=newFirst;x>=0;x--)
    sNew=sNew+str.substring(x,x+1);
  return sNew;
}
public String noSpaces(String sWord){
  String s=new String();
  for(int x=0;x<sWord.length();x++)
    if(sWord.substring(x,x+1).equals(" ")==false)
      s=s+sWord.substring(x,x+1);
  return s;
}
public String numLetters(String sString){
  String s=new String();
  for(int x=0;x<sString.length();x++)
    if(Character.isLetter(sString.charAt(x))==true)
      s=s+sString.substring(x,x+1);
  return s;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
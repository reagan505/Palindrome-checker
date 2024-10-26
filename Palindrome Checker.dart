

//Function ispalindrome take string input and returns boolean output.
bool isPalindrome(String input) {

String lowercased = input.toLowerCase(); // Convert to lowercase
String processed = lowercased.replaceAll(RegExp(r'[^a-z0-9]'), '');  // Remove non-alphanumeric characters
//RegExp(r'[^a-z0-9]'):  this matches any character that is not a lowercase letter (a-z) or a digit (0-9).

  return processed == processed.split('').reversed.join('');
  //This line returns true if the string reads the same forwards and backwards, ignoring spaces, punctuation, and case.
}
//allow input to accept any type of value
bool isPalindromeNumber(var input){

   // Converts numeric input to string
  String inputStr = input.toString();

  // Checks if the string representation of the number is a palindrome
  return isPalindrome(inputStr);
}

void main() {

  print(isPalindrome("No lemon, no melon"));
  print(isPalindrome("Hello World"));


  print(isPalindromeNumber(12321));
  print(isPalindromeNumber(12345));
}

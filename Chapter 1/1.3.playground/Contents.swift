//URLify: Write a method to replace all spaces in a string with "%20". You may assume that the string has sufficient space at the end to hold the additional characters, and that you are given the "true" length of the string.
import Foundation
func URLify(str: String) -> String{
  let array = str.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet()).filter({ $0 != "" })
  var wordURLify = ""
  for word in array {
    if word != array.last {
      wordURLify += word + "%20"
    } else {
       wordURLify += word
    }
  }
  return wordURLify
}
//TODO: deal with length
let strWithURLify = URLify("Mr John Smith         ") //13
let result = "Mr%20John%20Smith"
let compare = (strWithURLify == result)
print(compare)

let otherStrWithURLify = URLify("      Mr John Smith         ")
let result2 = "Mr%20John%20Smith"
let compare2 = (otherStrWithURLify == result2)
print(compare2)

let anotherStrWithURLify = URLify("      Mr            John                Smith         ")
let result3 = "Mr%20John%20Smith"
let compare3 = (anotherStrWithURLify == result3)
print(compare3)
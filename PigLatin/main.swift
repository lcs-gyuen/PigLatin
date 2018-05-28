import Foundation

// INPUT
// Global variable, tracks how many words we can expect to have to translate to Pig Latin
var countOfExpectedWordsToTranslate = 3
print("How Many Words?")
while 1 == 1 {
    guard let givenInput = readLine() else {
        print("How Many Words?")
        continue
    }
    guard let givenInteger = Int(givenInput) else {
        print("How Many Words?")
        continue
    }
    
    if givenInteger <= 0 || givenInteger > 10 {
        print("How Many Words?")
    }
    countOfExpectedWordsToTranslate = givenInteger
    break
    
}

for counter in 1...countOfExpectedWordsToTranslate {
    print("Enter word #\(counter):")
    guard let givenInput = readLine() else {
        continue
    }
    
    var output = ""
    var seenVowel = false
    var suffixFound = ""
    for letter in givenInput {
        if seenVowel == false {
            switch letter {
            case "A" , "E" , "I" , "O" , "U" :
                seenVowel = true
            default:
                seenVowel =  false
            }
        }
        if seenVowel == false {
            suffixFound += String(letter)
        } else  {
            output += String(letter)
            
        }
        
        pigLatin = output + suffixFound + "AY"
        
    }
    print(pigLatin)
}

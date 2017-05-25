import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

var day : Int = 0
// Loop until valid input is received
while day == 0 {
    
    // Show the prompt
    print("Enter day: ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputAsInteger = Int(notNilInput) {
            if inputAsInteger >= 1 && inputAsInteger <= 7 {
                day = inputAsInteger
            }
        }
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        
    }
    
}
var numberOfDays = 0
// Loop until valid input is received
while numberOfDays == 0 {
    
    // Show the prompt
    print("Enter the number of days in the month: ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputAsInteger = Int(notNilInput) {
            if inputAsInteger >= 28 && inputAsInteger <= 31 {
                numberOfDays = inputAsInteger
            }
        }
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        
    }
    
}
var inputToProcess3 = ""
var specialDay = 0
// Loop until valid input is received
while specialDay == 0 {
    
    // Show the prompt
    print("Enter the special day: ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputAsInteger = Int(notNilInput) {
            if inputAsInteger >= 1 && inputAsInteger <= numberOfDays {
                specialDay = inputAsInteger
            }
        }
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        
    }
    
}
/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'process' code below....
/*
 var allDays : [Any] = []
 var specialDayString = ""
 for currentDay in 1...numberOfDays {
 if currentDay == specialDay {
 specialDayString = ("* + \(currentDay)")
 allDays.append(specialDayString)
 } else {
 allDays.append(currentDay)
 }
 }
 */
/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
var letterSpacing = "    "
var spacingBeforeNumber = "   "
var calendar = ""
var positionInCal = 0
var lineBreak = 8 - day
calendar += "Sun Mon Tue Wed Thu Fri Sat"
calendar += "\n"
if day == 1 {
    calendar += "  "
} else {
    for totalSpacing in 0...day-2 {
        calendar += "\(letterSpacing)"
    }
}
for i in 1...numberOfDays {
    //if (i - 1) == lineBreak {
      //  calendar += "\n"
    //}
    if i < 10 && i != 1 && (i - 1) != lineBreak{
        if i == specialDay {
            calendar += "  "
        } else {
        calendar += "   "
        }
    } else if i != specialDay {
        calendar += "  "
    }
    
    if (i-1) == (lineBreak) && i < 10{
        calendar += "\n"
        calendar += "  "
        lineBreak += 7
    } else if (i-1) == (lineBreak) && i >= 10{
        calendar += "\n"
        calendar += " "
        lineBreak += 7
    }
    if i == specialDay {
        calendar += " "
        calendar += "*\(i)"
    } else {
        calendar += "\(i)"
    }
}
print(calendar)

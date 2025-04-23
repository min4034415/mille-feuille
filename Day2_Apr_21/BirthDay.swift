import Foundation


// var birthdayString = readLine() ?? ""
var birthdayString = "20181202"
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyyMMdd"
let outputdateFormatter = DateFormatter()
outputdateFormatter.dateFormat = "MMM dd"

if let date = dateFormatter.date(from: birthdayString){
    print(outputdateFormatter.string(from: date))
}


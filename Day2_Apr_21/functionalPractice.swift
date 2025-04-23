import Foundation
// 1. 주어진 배열의 모든 요소를 제곱한 새로운 배열을 만드세요.
let numbers = [1, 2, 3, 4, 5]
// let squared = ...
let squared = numbers.map {$0 * $0}
print(squared)

// 2. 주어진 배열에서 홀수만 걸러내세요.
// let odds = ...
let odds = numbers.filter {$0 % 2 == 1}
print(odds)

// 3. 주어진 배열의 모든 요소의 합을 구하세요.
// let total = [1,3,5,6,7,8,9]
let total = numbers.reduce(0) {$0 + $1}
print(total)
// let total1 = total.reduce(total) { partialResult, Int in
//     numbers
// }

// 4. 문자열 배열에서 정수로 변환 가능한 값만 골라 Int 배열로 만드세요.
let strings = ["10", "20", "삼십", "40"]
// let validInts = ...
// let validInts: [Int] = strings.filter {type(of: $0) == Int}
let validInts = strings.compactMap {Int($0)}
print(validInts)
let nonNumericStrings = strings.filter { Int($0) == nil }
print(nonNumericStrings)


// 5. 중첩 배열을 평탄화(flatten)하세요.
let nested = [[1, 2], [3, 4], [5]]
// let flat = ...
let flat = nested.flatMap{ $0 }

// 6. 주어진 배열을 내림차순으로 정렬하세요.
let unsorted = [7, 2, 9, 4]
// let sortedDesc = ...
let sortedDesc = unsorted.sorted { $0 > $1 }

// 7. 각 요소를 출력하세요.
// numbers.forEach { ... }
numbers.forEach {
    print("Element:", $0)
}

// 8. 배열에 3의 배수가 하나라도 있는지 확인하세요.
// let hasMultipleOfThree = ...
let hasMultipleOfThree = numbers.contains{ $0 % 3 == 0 }

// 9. 첫 번째 짝수를 찾으세요.
// let firstEven = ...
let firstEven = numbers.first { $0 % 2 == 0 }
print(firstEven ?? 23)

// 10. 모든 요소가 0보다 큰지 확인하세요.
// let allPositive = ...
let allPositive = numbers.allSatisfy{ $0 > 0 }
print(allPositive)

// 11. 주어진 배열에서 5보다 큰 수만 골라 제곱하세요.
let numbers2 = [1, 3, 5, 7, 9]
let squaredGreaterThanFive = numbers2.filter { $0 > 5 }.map { $0 * $0 }
print(squaredGreaterThanFive)

// 12. 문자열 배열에서 가장 긴 문자열을 찾으세요.
let wordsa = ["apple", "banana", "cherry", "date"]
let longestWords = wordsa.max(by: { $0.count < $1.count })
print(longestWords ?? "")

// 13. 배열의 모든 요소를 문자열로 변환하고 쉼표로 구분하세요.
let numbers3 = [1, 2, 3, 4, 5]
let joinedString = numbers3.map { String( $0) }.joined(separator: ", ")
print(joinedString)

// 14. 배열에서 중복된 요소를 제거하세요.
let duplicates = [1, 2, 2, 3, 4, 4, 5]
let uniqueNumbers = Array(Set(duplicates)).sorted()
print(uniqueNumbers)

// 15. 배열의 요소들을 모두 곱하세요.
let numbers4 = [1, 2, 3, 4, 5]
let product = numbers4.reduce(1) { $0 * $1 }
print(product)

// 16. 문자열 배열에서 특정 문자로 시작하는 요소들을 찾으세요.
let fruits = ["apple", "banana", "cherry", "date", "apricot"]
// let startsWithA = fruits.filter { $0.hasPrefix("a") }
// print(startsWithA)
let startsWithA = fruits.filter { $0.hasPrefix("d") }
print(startsWithA)

// 17. 배열의 요소들을 그룹화하세요 (짝수/홀수).
let numbers5 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
// let grouped = Dictionary(grouping: numbers5) { $0 % 2 == 0 ? "even" : "odd" }
// print(grouped)

// 18. 배열에서 연속된 중복 요소를 제거하세요.
let consecutiveDuplicates = [1, 1, 2, 2, 3, 4, 4, 5]
// let noConsecutiveDuplicates = consecutiveDuplicates.enumerated().filter { index, element in
//     index == 0 || element != consecutiveDuplicates[index - 1]
// }.map { $0.element }
// print(noConsecutiveDuplicates)

// 19. 배열의 요소들을 역순으로 출력하세요.
let numbers6 = [1, 2, 3, 4, 5]
// numbers6.reversed().forEach { print($0) }

// 20. 두 배열의 공통 요소를 찾으세요.
let array1 = [1, 2, 3, 4, 5]
let array2 = [3, 4, 5, 6, 7]
// let commonElements = Set(array1).intersection(Set(array2))
// print(Array(commonElements))
// 12. 문자열 배열에서 가장 긴 문자열을 찾으세요.
let words = ["apple", "banana", "cherry", "date"]
// let longestWord = words.max(by: { $0.count < $1.count })
// print(longestWord ?? "")

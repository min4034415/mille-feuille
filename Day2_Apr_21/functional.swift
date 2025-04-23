// 1. map
let numbers = [1, 2, 3, 4, 5]
let doubled = numbers.map { $0 * 2 }
print("map:", doubled) // [2, 4, 6, 8, 10]

// 2. filter
let evenNumbers = numbers.filter { $0 % 2 == 0 }
print("filter:", evenNumbers) // [2, 4]

// 3. reduce
let sum = numbers.reduce(0) { $0 + $1 }
print("reduce:", sum) // 15

// 4. compactMap
let strings = ["1", "2", "abc", "4"]
let validInts = strings.compactMap { Int($0) }
print("compactMap:", validInts) // [1, 2, 4]

// 5. flatMap
let nested = [[1, 2], [3, 4], [5]]
let flattened = nested.flatMap { $0 }
print("flatMap:", flattened) // [1, 2, 3, 4, 5]

// 6. sorted(by:)
let unsorted = [3, 1, 4, 2]
let sortedAsc = unsorted.sorted { $0 < $1 }
print("sorted:", sortedAsc) // [1, 2, 3, 4]

// 7. forEach
numbers.forEach { print("forEach:", $0) }

// 8. contains(where:)
let hasEven = numbers.contains(where: { $0 % 2 == 0 })
print("contains(where:):", hasEven) // true

// 9. first(where:)
let firstEven = numbers.first(where: { $0 % 2 == 0 })
print("first(where:):", firstEven ?? "none") // 2

// 10. allSatisfy(_:) 
let allPositive = numbers.allSatisfy { $0 > 0 }
print("allSatisfy:", allPositive) // true

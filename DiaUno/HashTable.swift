import Foundation
var hashmap: [Int: Int] = [:]

hashmap = [1: 10, 2: 20, 3: 30]

if hashmap.keys.contains(1) {
    print(hashmap[1]!)
}
else {
    print("key not found")


}
    print(hashmap.count)

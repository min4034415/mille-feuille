// Define a protocol
protocol Vehicle {
    var numberOfWheels: Int { get }
    func drive()
}

// Class conforming to the protocol
class Car: Vehicle {
    var numberOfWheels: Int = 4

    func drive() {
        print("Driving a car with \(numberOfWheels) wheels.")
    }
}

// Usage
let myCar = Car()
myCar.drive() // Output: Driving a car with 4 wheels.

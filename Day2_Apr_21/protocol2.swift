protocol hiya {
    var canada: Int {get}
}
protocol country {
    var land: Int {get}
}


class mapleCountry : hiya, country {
    var canada: Int = 23
    var land: Int = 281
    func revealYourSelf() {
        print("Your canada is",self.canada)
        print("Your land is",self.land)
    }
}

var maple = mapleCountry()
maple.revealYourSelf()
maple.canada = 1231234 
maple.revealYourSelf()

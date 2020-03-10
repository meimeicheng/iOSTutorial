// MARK: - 屬性觀察者 Property Observers
/*
 用來監視屬性值的變化
 */
print("=========Property Observers====")
class Hotel {
    var roomCount: Int
    var roomPrice: Int  {
        willSet {
            if newValue > 100 {
                print(" your room price \(newValue) will be reset  ")
            }
            
        }
        didSet {
            if roomPrice > 1000 {
                roomPrice = 1000
                print(" \(oldValue) reset price to \(roomPrice)")
            }
        }
    }
    
    var totalPrice : Int {
        get{
            
            return roomCount * roomPrice
        }
        set{
            roomPrice = Int(newValue/roomCount)
        }
    }
    
    //在init中引用的參數 不會再進didSet/willSet
    init(roomCount: Int = 5 , roomPrice : Int = 2000) {
        self.roomCount = roomCount
        self.roomPrice = roomPrice
    }
}


var hotel = Hotel()
//hotel.roomCount = 10
//hotel.roomPrice = 3000
print("total price : \(hotel.totalPrice)")
print("hotel roomPrice : \(hotel.roomPrice)")


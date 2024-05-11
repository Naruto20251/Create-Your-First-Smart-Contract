pub contract Cars {
    pub struct car {
        pub var name: String
        pub var model :UInt32
        pub var price: UInt32
        

        
        init (name : String,model:UInt32, price: UInt32) {
            self.name = name
            self.price = price
            self.model = model
        }
    }

    pub var cars: {String: car}
    
    init() {
        self.cars = {}
    }

    pub fun addcar(_name: String,_model:UInt32, _price: UInt32) {
        let car = car(name: _name, model:_model,price: _price)
        self.cars[_name] = car
    }
    
    pub fun getcar(_name: String) : car {
        return self.cars[_name]!
    }
}

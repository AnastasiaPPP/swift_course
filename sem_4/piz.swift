enum PizzaNames: String{
    case margarita = "Маргарита"
    case pepperoni = "Хот Пепперони"
    case cheese = "Сырная пицца"
    case bonanza = "Большая бонанза"
    case oriental = "Восточная"
    case meat = "Мясная"
}

struct Pizza {
    var name: PizzaNames
    var cost: Int
    var dough: String
    var ingr: Ingredient
    enum Ingredient{
        case cheese
        case tomato
        case pepperoni
        case mushrooms
        case nothing
        
        init(ingr: String) {
            switch ingr {
            case "Сыр": self = .cheese
            case "Помидор": self = .tomato
            case "Пепперони": self = .pepperoni
            case "Грибы": self = .mushrooms
            case "Без добавок": self = .nothing
            default: self = .nothing
            }
        }
    }
}

struct Workers {
    var name: String
    var salary: Int
    var position: Position
    enum Position{
        case teller
        case chef
        case nothing
        
        init(position: String) {
            switch position  {
            case "Кассир": self = .teller
            case "Повар": self = .chef
            default: self = .nothing
            }
        }
    }
}

class Pizzeria {
    
    private var pizza: [Pizza] = []
    var tables: [Tables] = []
    private var workers: [Workers] = []

    init(pizza: [Pizza], tables: [Tables]) {
        self.pizza = pizza
        self.tables = tables
    }
    
    convenience init() {
        let margarita_ = Pizza(name: .margarita, cost: 125, dough: "Толстое", ingr: .cheese)
        let bonanza_ = Pizza(name: .bonanza, cost: 115, dough: "Толстое", ingr: .nothing)
        let table1 = Tables()
        let table2 = Tables()
        self.init(pizza: [margarita_, bonanza_], tables: [table1, table2])
    }
    
    
    func addPizza(pizza:Pizza){
        self.pizza.append(pizza)
    }
    
    func getPizzas() -> [Pizza]{
        return self.pizza
    }
}
class Tables {
    private var seats: Int
    private var pizzeria : Pizzeria = Pizzeria()
    
    init(seatingCapacity: Int) {
        self.seats = seatingCapacity
    }
    
    convenience init() {
        self.init(seatingCapacity : 6)
    }
    
    func seatСheck(guestCount: Int) -> Bool {
        //let sum = self.pizzeria.tables.reduce(0, +)
        return self.seats > guestCount
    }
}

// let firstPizza = Pizza(name: .oriental, cost: 120, dough: "Тонкое", ingr: .mushrooms)
// let secondPizza = Pizza(name: .cheese, cost: 110, dough: "Тонкое", ingr: .nothing)
// let thirdPizza = Pizza(name: .meat, cost: 125, dough: "Толстое", ingr: .tomato)
// var myPizzeria = Pizzeria()
// myPizzeria.addPizza(pizza: firstPizza)
// myPizzeria.addPizza(pizza: secondPizza)
// myPizzeria.addPizza(pizza: thirdPizza)
// dump(myPizzeria.getPizzas())
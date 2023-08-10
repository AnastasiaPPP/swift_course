
 enum PizzaNames: String{
        case margarita = "Маргарита"
        case pepperoni = "Пепперони"
        case cheese = "Сырная пицца"
        case bavarian = "Баварская пицца"
        case roman = "Римская пицца"
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

/*
 Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. 
 Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками.
 Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, 
 которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, 
 если места не хватает. Изначальное количество мест задается в инициализаторе.
 Добавить в класс пиццерии свойство, в котором хранится массив столиков. 
 У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. 
 Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра.
 */
// struct Worker {
//     var name: String
//     var salary: Double
//     var position: Profession
//     enum Profession {
//         case teller
//         case chef
    
//         init(position: String) {
//             switch position  {
//             case "Кассир": self = .teller
//             case "Повар": self = .chef
//             }
//     }
//     }
// }

class Pizzeria {

    private var pizza: [Pizza] = []
    //private var workers: [Worker] = []

        init(pizza: [Pizza]) {
        self.pizza = pizza
        }

        convenience init() {
            let margarita_ = Pizza(name: .margarita, cost: 125, dough: "Толстое", ingr: .cheese)
            let roman_ = Pizza(name: .roman, cost: 115, dough: "Толстое", ingr: .nothing)
            self.init(pizza: [margarita_, roman_])
}

    
    func addPizza(pizza:Pizza){
        self.pizza.append(pizza)
    }

    func getPizzas() -> [Pizza]{
        return self.pizza
    }

}

let firstPizza = Pizza(name: .bavarian, cost: 120, dough: "Тонкое", ingr: .mushrooms)
let secondPizza = Pizza(name: .cheese, cost: 110, dough: "Тонкое", ingr: .nothing)
var myPizzeria = Pizzeria()
myPizzeria.addPizza(pizza: firstPizza)
myPizzeria.addPizza(pizza: secondPizza)
dump(myPizzeria.getPizzas())

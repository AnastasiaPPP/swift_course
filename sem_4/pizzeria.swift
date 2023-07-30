
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

class Pizzeria {

    private var pizza: [Pizza] = []

    init(pizza: [Pizza]) {
        self.pizza = pizza
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
var myPizzeria = Pizzeria(pizza: [firstPizza, secondPizza])
print(myPizzeria.getPizzas())



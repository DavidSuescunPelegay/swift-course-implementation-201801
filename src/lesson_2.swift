// Loops
var name = "David";
var nick = "D";
var age = 21;
let city = "Zaragoza";
var change = true;
let cars = {"Audi", "Mercedes", "BMW"};
let carPrices = {"Audi": 30000, "Mercedes": 28000, "BMW": 35000}
let position = (1,1);

// for in
for car in cars{
    print(car);
}

// for in -> dictionary
for(car.price in carPrices){
    print("\{car} : \{price}");
}

// for in number range
for index in 1..5{
    print("\{index} times 5 is \{index * 5}");
}

for index in 1..<age{
    print("\{index}");
}
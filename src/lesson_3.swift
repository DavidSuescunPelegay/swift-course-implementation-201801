// Switch
var name = "David";
var nick = "D";
var age = 21;
let city = "Zaragoza";
var change = true;
let cars = ["Audi", "Mercedes", "BMW"];
let carPrices = ["Audi": 30000, "Mercedes": 28000, "BMW": 35000];
let position = (1,1);


switch (age) {
    case 21:
        print("My age");

    default:
        print("Not my age");
}


switch (age) {
    case 0..<35:
        print("My age range");
    default:
        print("Not my age");
}


switch (position) {
    case (1,1):
        print("My current position");
    default:
        print("Not my current position");
}

(age < 18) ? print("Under aged") : print("Not under age") 

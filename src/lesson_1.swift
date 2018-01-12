// Variables, constants, types
var name = "David";
var nick = "D";
var age = 21;
let city = "Zaragoza";
var change = true;

print("\(name) \(nick) is \(age) years old and lives in \(city), ¿continue?, "+(change ? "Yes!":"No!"));

print("\(name) \(nick) is \(age) years old and lives in \(city), ¿continue?, "+(change ? "Yes!":"No!"));

// Functions
func createText(name:String,nick:String){
    print("Hello \(name) \(nick)");
}

print (createText(name:name,nick:nick));
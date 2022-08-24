import UIKit
import CoreFoundation

var gretting = "Hello, playground"
var gretting2 = "Hello, playground"
var gretting3 = "Hello, playground"
var greeting4 = "Hello, playground"



/*
    Documentation
 
    - For add comments you have to positioning the cursor over the name of the function and press "command + option + /"
    
    - To see the created documentation, pass the mouse over the name of the function and click on the question mark
*/
/// Method to call an API REST
/// - Parameters:
///   - url: <#url description#>
///   - method: <#method description#>
///   - params: <#params description#>
///   - header: <#header description#>
/// - Returns: <#description#>
func request(_ url: URL, method: String = "GET", params: [String: Any]? = nil, header: [String: Any]? = nil) -> Void {
 //Faz alguma coisa
}



// Variables -> Usually Camel Case in swift and (has inference and is strongly typed)
// var -> mutable
var documentNumber = "123.456.789-00"

var documentNumberTyped: String = "987.654.321-00"

documentNumber = documentNumberTyped

// let -> imutable (constant), you can't change
let documentNumberConst = "123.456.789-00"


class Person {
    let name: String
    var age: Int
    
    init (name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Person (name: "Flavio", age: 41)

person.age = 35

// Types -> (String, Character, Double, Float, Int, Bool

var newAge: UInt8 = 78 // (from 0 to 255 and it`s unsigned -> don`t accept negative value)
UInt8.min
UInt8.max

// inferences
var myString = "this is a text"         // -> String
var number = 4578                       // -> Int
var anotherNumber: Float = 3456.8       // -> Float
var sentence = false                    // -> Bool
var character: Character = "a"          // -> Character


// Interpolation of Strings
var fisrtName = "Flavio"
var lastName = "Alvarenga"
var age = 40

let eric = "\(fisrtName.uppercased()) \(lastName.lowercased()) \(abs(age)) anos"

// Tupla -> Type that contains other types
var address : (street: String, number: Int, zipCode: String) = ("Av. Paulista", 1000, "01311-000")
print(address)

let fiapAddress = "A FIAP fica na \(address.0), numero \(address.number) - CEP: \(address.zipCode)"
print(fiapAddress)


// Optional -> nullable (nil)
var driverLicense: String?
driverLicense = "123456.789"

// Optional Binding
if let driverLicense = driverLicense {
    print("Congrats, your driver license is \(driverLicense)")
}

/* use guard when you don`t want continue if something is wrong, otherwise use let */
//guard let driverLicense = driverLicense else {
//    return true
//}

// vida loka way (never use this)
print ("Your driver license is \(driverLicense!)")

// nil coalescing operator
var numberA = Int("7")
var numberB = Int("7")
var numberC = Int("7")
var numberD = Int("7")

var newInt: Int = numberA ?? numberB ?? numberC ?? 0

let xxx = driverLicense?.uppercased()

// Implicity Unwrapped Optional
var driverLicense2: String!
driverLicense2 = "225647-9"

// Collections

// Array -> sorted items from the same type
var emptyArray: [String] = []
var emptyArray2 = [String]()
var emptyArray3: Array<String> = []
var emptyArray4 = Array<String>()

var shoppingList = ["Sugar", "Milk", "Coffee"]
shoppingList.isEmpty
shoppingList.count

if shoppingList.count > 0 {
    print ("Is not empty")
}

print(shoppingList[0]) // this subscript method always returns an optional
shoppingList.first
shoppingList.last

shoppingList.append("Onion")
shoppingList.insert("Bean", at: 1)
let milk = shoppingList.remove(at: 2)
print ("\(milk) just removed")

shoppingList.contains("Rice")
shoppingList.firstIndex(of: "Milk")


// Dictionary > (unsorted items of the same type with the value associate to a key)
var emptyDict: [Int: String] = [:]
var states = [
    "BA": "Bahia",
    "MG": "Minas Gerais",
    "SP": "Sao Paulo",
    "RJ": "Rio de Janeiro",
    "PA": "Para"
]

states.isEmpty
states.count

states["RJ"] // This returns an Optional
states["TO"] = "Tocantis"
states["RJ"] = nil


// Set -> sorted items from the same type that don`t permit duplicated values
var emptySet: Set<Int> = []
var movies: Set<String> = ["Matrix", "Vingadores", "Jurassic World", "De volta para o Futuro", "Top Gun"]

movies.contains("Matrix")
movies.insert("Homem Aranha")   // return true
movies.insert("Matrix")         // return false (because Matrix movie already exists on the list)


var myWifeMovies: Set<String> = ["De Repente 30", "De Volta para o Futuro", "Jurassic Park", "Sintonia de Amor", "Mensagem para Voce"]

var favoriteMovies = movies.intersection(myWifeMovies)
var allMovies = movies.union(myWifeMovies)
var justMyMovies = movies.subtracting(myWifeMovies)

// Operators

// unary !
// binary + - * / => <= > < ??
// ternary ? :
// range ...   ..<

var grade = 6.5
let result = grade > 7 ? "Approved" : "Not approved"

0...100 // 0 to 100
0..<100 // 0 to 99

/*
// to compare structure
==
!=
*/

/*
// to compare class
===
!==
*/

// conditional structures and flow control

let temperature = 19
var climate = ""
if temperature <= 0 {
    climate = "Muito frio"
} else if temperature <= 10 {
    climate = "Frio"
}

let letter = "o"

switch letter {
    case "a", "e", "i", "o", "u":
        print("vowel")
    
    default:
        print("consonant")
}

let speed = 95.0

switch speed {
    case 0.0..<20.0:
        print("first")
    
    case 20.0..<40.0:
        print("second")
    
    case 4.0..<50.0:
        print("third")
    
    case 50.0..<90.0:
        print("crach")
default:
    break
}

switch letter.lowercased() {
    case "a"..."m":
        print("first part of alfabet")
    default:
        print("lsat part of alfabet")
}

//while / repeat

// for in
var names = ["Flavio", "Danilo", "Samuca", "Andre", "Miguel"]
for name in names {
    print(name)
}

let (street, zipCode, fiapNumber) = address
let (_, zip, _) = address

for state in states {
    print (state.key)
    print (state.value)
}

for (sigla, name) in states {
    print (sigla)
    print (name)
}

var 😻 = "Cacau"
var 🙀 = "Nescau"
var 💩 = "coco"

print ("O \(😻) e o \(🙀) fazem muito \(💩)")

import UIKit
//string
var greeting = "Hello, Ankit"
greeting="Ankit"
//int
var age=35
//multi-line string
var str1="""
This is my \
multilime \
comment
"""
//boolean
var awesome = true
//double
var pi=3.141
var score=90
//string interpolation
var str2="your score was \(greeting)"
//const
let ankit="kumar"
//type annotation
let album:String="Taylor"
let year:Int = 1989
let heigth:Double=1.78
let me:Bool=true

//arrays
let arr = ["Ankit","Kumar"]
//set - unordered collection
let colors=Set(["Ankit","kumar","new"])
let colors1=Set(["Ankit","Ankit","new"])
//dictionary
let height=[
    "Ankit":1.78,
    "Khushi":1.90
]
height["Alok",default: 0]
//empty collection
var teams=[String:String]()
teams["Paul"]="Red"

var results=[Int]()
results.append(contentsOf: [1,3,2])
//enums
enum Result {
    case success
    case failure
}
let res=Result.failure

enum Activity{
    case bored(mood:String)
    case running(destination:String)
}

let talking=Activity.running(destination: "Home")
enum Planet: Int {
    case mercury
    case mars
    case earth
}
let planet=Planet(rawValue: 1)

// Arithmetic operators
// sum
let a=10
let b=20
let c=a+b

//operator overloading
// combine values with operators
let first="fakes gonna"
let second=first + " fake"
//compoun assignment
var new = 90
new -= 5

var quote = "all that ends well"
quote += " happens well"

//comparison operators
a == b
a != b
a > b
a <= b

"Ankit" == "New"

// conditions
//1) if
let even = 21
if even % 2 == 0{
    print("Even")
}
    
else{
    
    print("Odd")
}

//2) &&
if even % 2 == 0 && even != 0
{
    print("Not null and even")
}
else if even == 0 || even % 2 != 0{
    print("null and not even")
}
// ternary operator

var ter = even % 2 == 0 ? "Even": "Odd"

//switch case

let weather = "sunny"
switch weather{
case "rain":
    print("Rainy")
case "windy":
    print("Windy")
case "sunny":
    print("Sunny")
default:
    print("enjoy your day")
}

//range operator
let scores=90
switch scores{
case 0..<50:
    print("Fail")
case 50..<80:
    print("Excellent")

default:
    print("you did great")
    
}

//for loop
let number = 1...10
for i in number {
    print("number is \(i) ")
}

let course = [ "DSA", "ReactJS", "Java", "C++" ]
  
print("Courses are: ")

for i in course{ print("\(i)")}

//while loop

var nu1 = 1
while nu1 <= 20{
    print(nu1)
    nu1 += 1
    
}
// repeat loop (just like do-while)
var nu2=1
repeat {
    print(nu2)
    nu2 += 1
} while nu2 <= 20

repeat{
    print("this is false")
}while false

//exit in loops
var countdown=10
while countdown >= 0{
    print(countdown)
    if countdown == 4{
        print("im boredd lets go")
        break
    }
    countdown -= 1
}

//nested loop
for i in 1...10 {
    for j in 1...10 {
        let product = i*j
        print("\(i) * \(j) is \(product)")
    }
}

//functions in swift

func printhelper(){
    let message="""
Hii yall \n
"""
    print(message)
}
//call function
printhelper()

//accepting parameter
func square(number:Int){
    print(number*number)
}
square(number: 5)

//returning value
func newsquare(number:Int)->Int{
    return number*number
}
let newSquared=newsquare(number: 5)
print(newSquared)

var j: Int = 10

while j > 0 {
    j -= 2
    if j.isMultiple(of: 2) {
        print("\(j) is an even number.")
    }
}

func sayHello(to name: String){
    print("hello \(name)")
}
sayHello(to: "Ankit")

func sayWhat(name: String){
    print("hello \(name)")
}
sayWhat(name: "Ankit")

//omitting parameter labels
func greet(_ person: String){
    print(person)
}
greet("Ankit")
//default parameter
func newGreet(_ person:String, nicely:Bool=true){
    if nicely == true{
        print("works")
    }
    else{
        print(person)
    }
}
//two ways of calling
newGreet("Ankit")
newGreet("Ankit",nicely: false)

//variadic functions
func squares(numbers: Int...){
    for number in numbers{
        print("\(number*number)")
    }
}
squares(numbers: 1,2,3,4,5)

// throw functions
enum PasswordError : Error{
    case obvious
}
func checkPassword(_ password:String)
    throws-> Bool{
    if password == "password" {
        throw PasswordError.obvious
    }
    else{
        return true
    }
}

do {
    let result=try checkPassword("password")
    print("password rating: \(result)")
}
catch{
    print("handle errors")
}

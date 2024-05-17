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
// inout paramter or variable paramater

func doubleInPlace(number: inout Int){
    number = number * 2
}
var myNum=7
doubleInPlace(number: &myNum)
print(myNum)

func paintHouse(color: String) -> Bool {
    if color == "tartan" {
        return false
    }
    return true
}
paintHouse(color: "tartan")

//closures
let driving={
    print("wassup")
}
driving()
//accepting parameters in closures
let newDriving={
    (place:String) in print("im driving to \(place)")
}
newDriving("Dumka")

//returning values in closure
let drivingReturn = {
    (place:String) -> String in
    return "im driving to \(place)"
}
//drivingReturn("London")

//closure as parameter
func letsGo(action:(String)->String){
    print("im getting ready")
  action("blah")
    print("i have arrived")
}
letsGo(action: drivingReturn)

// trailing closure syntax
// we can pass closure directly to the function

func newSomething(action:(String)->Void){
    print("hello")
    action("blah")
    print("hii")
}
newSomething{
    (place:String) in
    print("yes \(place)")
}

//shorthand closure format with multiple parameters
func travelnew(newArea:(String,Int)->String){
    print("hello")
    let desc=newArea("London",60)
}
travelnew {
    "im going to \($0) at \($1)"
}
// closure examples
struct Student{
    let name: String
    var testScore:Int
}
let students=[
Student(name: "Ankit", testScore: 80),
Student(name: "Khushi", testScore: 90),
Student(name: "Alok", testScore: 75),
Student(name: "Amit", testScore: 89),
Student(name: "Papa", testScore: 65),
Student(name: "Mummy", testScore: 50)
]
//using closure
var topStudentFilter:(Student)->Bool={
    Student in
    return Student.testScore > 80
}
//using func
func topStudentFilterF(student:Student)->Bool{
    return student.testScore>70
}

let topStudents=students.filter{$0.testScore>70}
for i in topStudents {
    print(i.name)
}

//Structs

struct Table{
    var legs: Int
}

var ikeaTable=Table(legs: 4)
print(ikeaTable.legs)


//computed properties

struct Sports{
    var name:String
    var isOlympics:Bool
    var olympicStatus:String{
        if isOlympics{
            return "\(name) is an olympic sport"
        }else{
            return "not olympic sport"
        }
    }
}
let chessboxing=Sports(name: "Football", isOlympics: false)
print(chessboxing.olympicStatus)

//property observer
struct Progress{
    var task:String
    var amount:Int{
        didSet{
            print("\(task) is \(amount) completed")
        }
    }
}
var progress=Progress.init(task: "laoding data...", amount: 40)
progress.amount=50
progress.amount=90

//Methods
//structs can have functions inside of them

struct City{
    var population:Int
    func collectTaxes()->Int{
        return population*1000
    }
    
}
var populations=City(population: 90)
print(populations.collectTaxes())
//mutating function
//by default struct is constant
struct Name{
    var name:String
    mutating func rename(){
        name="Ankit"
    }
}
var e=Name(name: "new")
e.rename()
print(e.name)

//properties & methods of strings
var something="Ankit is happy"
print(something.count)
print(something.lowercased())
print(something.uppercased())
print(something.hasPrefix("Do"))
print(something.sorted())
//properties and methods of arrays

var toys=["Woody"]
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
print(toys.remove(at: 0))
toys

// initializers
struct User{
    var name:String
    init() {
        name = "anonymous"
    }
}
var user=User()
user.name="Ankit"


//static properties and methods

struct Students{
    static var classSize=0
    var name:String
    init(name: String) {
        self.name = name
        Students.classSize += 1
    }
}
let ed=Students(name: "Ankit")
let n=Students(name:"Khushi")

print(Students.classSize)


//access control
struct Person{
    private var id:String
    init(id: String) {
        self.id = id
    }
    func identify()->String{
        return "My identity is \(id)"
    }
}
var khushi=Person(id: "1234")

print(khushi.identify())

//class
//doesnt have memberwise initialise so we create one using init()
class Ankit{
    var name:String
    var profession:String
    init(name: String, profession: String) {
        self.name = name
        self.profession = profession
    }
    
}

let kh=Ankit(name: "Ankit", profession: "coder")
kh.name="Ankit"

//structs by default have memeberwise initialisers
struct Hello{
    var name:String
}
let someone=Hello(name: "khushii")


// inheritance
//parent class
class Dog{
    var name:String
    var breed:String

    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
}
//child class
class Poodle:Dog{
      init(name: String) {
         super.init(name: name, breed: "poodle")
    }
}

class Doggy:Poodle{
    //override the
    override init(name: String) {
         super.init(name: "Doggy")
    }
}
let poodle=Dog(name: "Sam",breed: "poodle")
let doggy=Doggy(name: "german")
print(doggy.name
)
//override methods
class NewDog{
    func makeSomeNoise(){
        print("Woof!")
    }
}
//child class
class German:NewDog{
    //overriding the makesomenoise method
    override func makeSomeNoise() {
        print("im scary")
    }
}

let shephard=German()
shephard.makeSomeNoise()

//final class
//other classes can inherit this class we use FINAL keyword
 final class SomeDog{
    var name:String
    var breed:String
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
    //then we cant override as it gives error
//class Fluffy:SomeDog{
//     init(name: String) {
//         super.init(name: name, breed: "somedog")
//    }
//}

//deinit()

class Boy{
    var name="Ankit"
    
    init() {
        print("\(name) is alive")
    }
    func printGreeting(){
        print("Hello \(name)")
    }
    deinit{
        print("\(name) is not alive")
    }
}
for i in 1...3{
    let p=Boy()
    p.printGreeting()
}

//mutability

class Singers{
    var name="Taylore Swift"
    
}
let taylors=Singers()
taylors.name="Ankit"
print(taylors.name)


//protocols (kinda like abstract classes)

protocol Vehicle{
    func estimatedTime(distance:Int)->Int
    func travel(distance:Int)
}

struct Bicycle:Vehicle{
    func estimatedTime(distance: Int) -> Int {
        return distance/50;
    }
    func travel(distance: Int) {
        print("im travelled \(distance) kms")
    }
}
func commute(distance:Int, vehicle:Vehicle){
    print(vehicle.estimatedTime(distance: distance))
}
let bicycle=Bicycle()
commute(distance: 100, vehicle: bicycle)

// protocols inheritance

protocol Payable{
    func calculateWages()->Int
    
}
protocol NeedsTraining{
    func study()
    
}

protocol NeedsVacation{
    func takeVacation(days:Int)
    
}
protocol Employee:Payable,NeedsTraining,NeedsVacation{
    
}
//using it in struct
struct AddEmployee:Employee{
    func study() {
        print("needs studying")
    }
    
    func takeVacation(days: Int) {
       print("Take \(days) vacation")
    }
    
    func calculateWages() -> Int {
        return 1000
    }
}

let hi=AddEmployee()
print(hi.study())

//extension method

extension Int{
    func squared()->Int{
        return self * self
    }
}

let nums=9

nums.squared()

extension Int{
    var isEven:Bool{
        return self % 2==0
    }
}

var val=10
val.isEven

//protocol extension
let pythons=["Ankit","Khushi","Khushi"]

let beatles=Set(["Khushi","Ankit"])

extension Collection{
    func summarize(){
        print("these are \(count) of us")
        for name in self{
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()


//protocol oriented programming

protocol Identifiable{
    var id:String {get set}
    func identify()
}

extension Identifiable{
    func identify(){
        print("My id is \(id)")
    }
}
struct Users:Identifiable{
    var id:String
}

let users=Users(id: "twostraws")
users.identify()


//optionals
//kinda like nullable in dart
//? after type

var dogg:String?=nil

dogg="49"

var snoppy:String?=nil
snoppy="Khushii"
if let unwrapped = snoppy {
    print("\(unwrapped.count) letters")
}
else{
    print("Missing name")
}

//force unwrapping

let str:String!="5"

let ab = Int(str)

//nil coalecing

func newName(for id:Int)->String?{
    if id==1{
        return "Taylor"
    }
    else{
        return nil
    }
}

let newId=newName(for: 5) ?? "Anonymous"

//typecasting

class Animals{}

class Doggo:Animals{}

class AnotherAnimal:Animals{
    func makeSomeNoise(){
        print("woof!")
    }
    
}

let pets=[Doggo(),AnotherAnimal(),Doggo(),AnotherAnimal()]

for i in pets{
    if let dogg=i as? AnotherAnimal{
        dogg.makeSomeNoise()
    }
}

//two sum
var listVal=[8, 10, 2, 9, 7, 5]
let sums:Int=11
var l:Int=0
var r:Int=listVal.count-1

while(l<r){
    if(listVal[l]+listVal[r]==sums){
        print("found it")
    }
    else if(listVal[l]+listVal[r]>sums){
        r=r-1
    }
    else{
        l=l+1
    }
}

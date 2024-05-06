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
//set - unordered
let colors=Set(["Ankit","kumar","new"])
let colors1=Set(["Ankit","Ankit","new"])
//dictoniary
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
let planet=Planet(rawValue: 2)

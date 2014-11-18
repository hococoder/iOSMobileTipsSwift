// Playground - noun: a place where people can play

import UIKit
/*
var str = "Hello, playground"
str
println(str)

func helloWorld() {
    print("Hello, ")
    println("World!")
    println("I mean it!")
}

helloWorld()

func helloWorld(name:String)
{
    println("Hello, \(name)")
}

helloWorld("Josh")

//have first helloworld call second with "World" argument

func helloWorld(name:String, numberOfTimes:Int) //Int32 on 32bit, Int64 on 64bit
{
    println("Number of times: \(numberOfTimes)")
    for i in 1 ... numberOfTimes    //i as Int inferred, range is up to and including; up to but not including is ..<
    {
        print("\t(\(i))")
        helloWorld(name)
    }
}

helloWorld("Former Obj-C Developer", 3)
*/
//make a new section, comment out old

//remove no arg, instead set a default

func helloWorld(name:String = "World")
{
    println("Hello, \(name)")
}

helloWorld()
helloWorld(name:"Josh")

func helloWorld(name:String, numberOfTimes:Int) //Int32 on 32bit, Int64 on 64bit
{
    println("Number of times: \(numberOfTimes)")
    for i in 1 ... numberOfTimes    //i as Int inferred, range is up to and including; up to but not including is ..<
    {
        print("\t(\(i))")
        helloWorld(name: name)  //if a param has a default, must specify name when calling function
    }
}

helloWorld("Former Obj-C Developer", 3)




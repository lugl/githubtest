//
//  ViewController.swift
//  enum-swift-demo
//
//  Created by 路国良 on 15/12/11.
//  Copyright © 2015年 baofoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override  func viewDidLoad() {
        super.viewDidLoad()
        
//        printAndCount("Hello World")
        
        let value = minMax([1,2,3,4,5,6,7])
        
//        value.m
        
        let values = arithmeticMean(0,1,2,3,4,5,6,7,8,8,9,10)
        
        
        let str = arctString("abc","def","thc")
        
        
        
        
        
        
        
        
        
        var mathFunction:(Int,Int)->Int = addTwoInts
        
        
        let math = mathFunction(2,3)
        let antor = addTwoInts
        
        print(antor(2,b: 3))
        print(mathFunction(2,3))
        
        printMathResult(addTwoInts, a: 2, b: 3)
        
//        chooseStepFunction()
        
        var currentValue = 3
        let moveNeareToZero = chooseStepFunction(currentValue > 0)
        
        
        
        let name = ["Chirs","Alex","Ewa","Barry","Daniell"]
        
        
        var reversed = name.sort(backwards)
        
        let reverseds = name.sort({//闭包的标准格式
            (s1:String,s2:String) -> Bool in
            return s1 > s2
        })
        
        reversed = name.sort({(s1:String,s2:String) -> Bool in return s1 > s2})//
        
        reversed = name.sort({s1,s2 in return s1 > s2})//Inferring Type From Context
        
        
        reversed = name.sort({s1,s2 in s1 > s2})// //Implicit Returns from Single-Expression Closures
        
        //Shorthand Argument Names
        reversed = name.sort({$0 > $1})
        
        
        //Operator Functions
        reversed = name.sort(>)
        
        /*
        
        
    {
        (parameters) -> return type in 
        
        statements
        
        }
        
        
*/
        someFunctionThatTakesAclosure { () -> () in
            
        }
        
        someFunctionThatTakesAclosure(){
            
        }
        
//        reversed =name.sort($0 > $1)
        
        
        let digitNames = [0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
            5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
        
        let numbers = [16,58,510]
        
        let strings = numbers.map { (var number) -> String in
            
            var output = ""
            while number > 0 {
                output = digitNames[number % 10]! + output
                number /= 10
            }
            return output
        }
        
        
        let fun = makeIncrementor(forIncrement: 10)
        let a = fun()
      
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func makeIncrementor(forIncrement amount:Int)->()->Int{
        var runningTotal = 0
        
        func incrementor()->Int{
            runningTotal += amount
            return runningTotal
        }
        return incrementor
    }
    
    
    func someFunctionThatTakesAclosure(closure:() -> ()){
        
    }
    
    
    
    
    
    
    
    
    
    
    func backwards(s1:String,s2:String)->Bool{
        return s1 > s2
    }
    
    
    
    
    func changeFunction(backwards:Bool)->(Int)->Int{
        func stepForward(input:Int)->Int{
            return input + 1
        }
        func setpBackward(input:Int)->Int{
            return input - 1
        }
        return backwards ? setpBackward : setpForword
    }
    func setpForword(input:Int)->Int{
        return input + 1
    }
    func stepBackward(input:Int)->Int{
        return input - 1
    }
    
    func chooseStepFunction(backwards:Bool)->(Int)->Int{
        return backwards ? stepBackward : setpForword
    }
    
    
    
    //function types
    //(int ,int)->int
    func printMathResult(mathFunction:(Int,Int)->Int,a:Int,b:Int){
        
        print("Result:\(mathFunction(a,b))")
    }
    
    
    func addTwoInts(a: Int, b: Int) -> Int {
        return a + b
    }
    
    
    func multiplyTwoInts(a:Int,b:Int)->Int{
        return a*b
    }
    
    func printHelloWorld(){
        print("hello,world")
    }
    
//    var mathFunction: (Int, Int) -> Int = addTwoInts(Int,Int)
    
    
    
    
    func arctString(numbers:String...)->String{
        var total = ""
        for number in numbers{
            total += number
        }
        return total
    }
    
    func sayHello(personName:String) ->String{
        let greeting = "Hello" + personName + ""
        return greeting
    }
    
    func halfOpenRangeLength(start:Int,end:Int)->Int{
        
        return end - start
    }

    func sayHelloWorld()->String{
        return "hello world"
    }
    
    func sayGoodbye(personName:String){
        
    }
    
    func printAndCount(StringToPrint:String)->Int{
        print(StringToPrint)
        return Int(StringToPrint)!
    }

    func minMax(array:[Int])->(min:Int,max:Int){
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count]{
            if value < currentMin{
                currentMin = value
            }
            else if value > currentMax{
                currentMax = value
            }
        }
        return (currentMin,currentMax)//返回一个元祖
        
    }
    
    func maxMin(array:[Int])->(max:Int,min:Int,average:Double)?{
        if array.isEmpty{
            return nil
        }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count]{
            if value < currentMin{
                currentMin = value
            }
            else if value > currentMax{
                currentMax = value
            }
        }
       let aver = Double(array.reduce(0, combine: +)/array.count)
       return (currentMax,currentMin,aver)
    }
    
    
    
    func someFunction(externalParaeterName localParameterName:Int){
        json(string: "a", toString: "b", withJointer: "c")
    }
    
    
    func json(s1:String,s2:String,joiner:String)->String{
        return s1 + s2 + joiner
    }
    
    func json(string s1:String,toString s2:String,withJointer joiner:String)->String{
        return s1 + s2 + joiner
    }
    
    
    func arithmeticMean(numbers:Double...)->Double{
        var total:Double = 0
        for number in numbers{
            total += number
        }
        return total / Double(numbers.count)
    }
    
    
    
    @IBAction func button(sender: UIButton) {
        
        let viewcontoller = DetailViewController()
        DetailCompassPoint = CompassPoint.Sourth
        baofoo.name = "baofu.com"
        viewcontoller.stu.name = "tom"
    
        print("in ViewController i set bafooo.name = \(baofoo.name)")
        var a = vison.a
     
//        viewcontoller.myPone = .huawei
    
        
        self.navigationController?.pushViewController(viewcontoller, animated: true)
        
    }
}


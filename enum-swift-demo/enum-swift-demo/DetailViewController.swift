//
//  DetailViewController.swift
//  enum-swift-demo
//
//  Created by 路国良 on 15/12/11.
//  Copyright © 2015年 baofoo. All rights reserved.
//

import UIKit

 enum vison:Int{
    case a = 10
    case b
}

public enum UIViewType:Int{
    case ui_custom
    case ui_system
    case ui_infoDark
    case ui_contactadd
    case ui_infoLight
    //    public static var RoundedRect: UIButtonType
}

public enum CompassPoint{
    case North
    case Sourth
    case East
    case West
}

public var DetailCompassPoint = CompassPoint.West

public enum UIModalTransitionStyle : Int {
    
    case CoverVertical
    case FlipHorizontal
    case CrossDissolve
    @available(iOS 3.2, *)
    case PartialCurl
}


public struct baofooS {
    var name:String{
        willSet{
            print("name willSet tobe \(name)")
        }
        didSet{
            print("name didSet tobe \(name)")
        }
        
      
    }
    
    
}

public var baofoo:baofooS = baofooS(name: "bafoo.com")


public enum Palnet:Int{
    
    case Mercury = 1,Venus,Earth,Mars,Jupiter,Saturn,uranus,Neptune
}


class DetailViewController: UIViewController {

    struct Student{
        var name:String{
            willSet{
                print("willSet student.name")
            }
            didSet{
                print("didSet student.name = \(name)")
            }
        }
    }
    
    var stu = Student(name: "jam")
    
    
    enum phone:String{
        case iphone
        case samsung
        case huawei
    }
    
    var myPone = phone.samsung
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
//        switch DetailCompassPoint{
//        case .East:
//            print("DetailViewController DetailCompassPoint = \(DetailCompassPoint)")
//        case.North:
//            print("DetailViewController DetailCompassPoint = \(DetailCompassPoint)")
//        case.Sourth:
//            print("DetailViewController DetailCompassPoint = \(DetailCompassPoint)")
//        case.West:
//            print("DetailViewController DetaiilCompassPoint = \(DetailCompassPoint)")
//        }
//        
//        print("DetailViewController baofoo = \(baofoo)")
//        switch myPone{
//        case .huawei:
//            print("my phone is huawei")
//        case.samsung:
//            print("my phone is samsung")
//        case.iphone:
//            print("my phone is iphone")
//        }
//        
//        enum MyColor{
//            case write
//            case blue
//            case red
//            case clear
//            case orange
//            case black
//        }
//        
//            struct FamilColor{
//            var colorName:String
//            var relationType:MyColor
//            init (colorName:String,relationType:MyColor){
//                self.colorName = colorName
//                self.relationType = relationType
//            }
//        }
//        let blue = FamilColor(colorName: "blue", relationType: MyColor.blue)
//        let black = FamilColor(colorName: "black", relationType: MyColor.black)
//        
        
//        
//        
//        enum FamilyRelationshipType:Int{
//            case GrandFather = 400
//            case GrandMother = 500
//            case Father = 600
//            case Mother = 700
//            case Brother = 800
//            case Sister = 900
//            case Son = 1000
//            case Daugther = 1100
//        }
//        
//        struct FamilyMember{
//            var name:String
//            var relationshipTyoe:FamilyRelationshipType
//            init(name:String,relationshipTyoe:FamilyRelationshipType){
//                self.name = name
//                self.relationshipTyoe = relationshipTyoe
//            }
//        }
//        
//        func giftFor(member:FamilyMember)->String{
//            switch member.relationshipTyoe {
//            case .GrandFather:
//                return ""
//            case .GrandMother:
//                return""
//            case.Father:
//                return ""
//            case.Mother:
//                return ""
//            case.Brother:
//                return""
//            case.Sister:
//                return""
//            case.Son:
//                return""
//            case.Daugther:
//                return""
//            }
//        }
        
//        
//        enum FamilyRelationshipType{
//            case GrandFather(age: Int)
//            case GrandMother(age: Int)
//            case Father(age: Int)
//            case Mother(age: Int)
//            case Husband(age: Int)
//            case Wife(age: Int)
//            case Brother(age: Int)
//            case Sister(age: Int)
//            case Son(age: Int)
//            case Daugther(age: Int)
//        }
//        
//        
//        struct FamilMember{
//            var name:String
//            var relationshipType:FamilyRelationshipType
//            init(name:String,relationshipType:FamilyRelationshipType){
//                self.name = name
//                self.relationshipType = relationshipType
//            }
//            
//            static func giftFor(menber:FamilMember)->String{
//                switch menber.relationshipType{
//                case .Brother(let age):
//                    if age > 10{
//                        return ""
//                    }
//                    else{
//                        return ""
//                    }
//                case .Daugther:
//                    return""
//                default:
//                    return""
//                }
//            }
//        }
//        
//        
//        
//        enum weather{
//            case  sunny(temper:Int)
//            case cloudy(temper:Int)
//            case partly(temper:Int)
//            case rain (temper:Int)
//            case snow (temper:Int)
//            
//            func dressing()->String{
//                switch self{
//                case .sunny(let temper):
//                    if temper < 20{
//                        return ""
//                    }
//                    else{
//                        return ""
//                    }
//                case .rain:
//                    return ""
//                case.partly:
//                    return ""
//                default:
//                    return ""
//                }
//            }
//        }
//        
//        
//        struct dressing{
//            var name:String
//            var myweather:weather
//            init(name:String,myweather:weather){
//                self.name = name
//                self.myweather = myweather
//            }
//        }
//        
//        enum type:String{
//            case src = "hello"
//            case none = "none"
//            init(val:String){
//                switch val{
//                case src.rawValue:
//                    self = .src
//                default:
//                    self = .none
//                }
//            }
//        }
        
        
//        
//        let languages = ["java","Object-c","swift"]
//    
//        
//        let lanL = languages.map {
//           la in la.count
//            
//        }
//        
//        print(lanL)
        
//        
//        func fx(x:Int)->Int{
//            return x + 10
//        }
//        
//        var a = [1,2,3,4,5]
//        
//        let b = a.map(fx)
//        print(b)
//        
//        
//        
//        let c = [0,1,2,3,4,5]
//        
//        let d = c.map {
//            x in x*x
//        }
//        
//        
//        print("d = \(d)")
//        
//        view.backgroundColor = UIColor.whiteColor()
//        
//        func function(idnex:Int,a:[String], b: [String])->[String]{
////            a[index] = b[index]
//            return a
//        }
//        
//        
//        var people = ["players", "haters", "heart-breakers", "fakers"]
//        let actions = ["play", "hate", "break", "fake"]
//        
//        
//        
//        let sum = [0,1,2,3,4,5].reduce(0, combine: {
//            $0 + $1
//        })
//        print(sum)
//        
//        let mynumer = [0,1,2,3,4,5]
//        let startWith = 0
//        
//        let mysum  = mynumer.reduce(startWith) { (run,cur) in
//            run + cur
//        }
//        
//        print(mysum)
//        
//        
//        let greetings = ["Hello, World", "Hello, Swift", "Later, Objective-C"]
//        var hellCount = 0
       
        
        
        
        
//        for index in 0 ..< people.count {
//            people[index] = actions[index]
//            
//        }
//        
//        print("people = \(people)")
        
        // public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell

        
        
        
        var  a:Int = 0
        
        func incrementFunctional(num:Int)->Int{
            
            return num + 1
        }
        
        a = incrementFunctional(a)
        
        print(a)
        
        let languages = ["Object-c","Java","Smalltalk"]
        
        let languageLengthes = languages.map(fx)
        
        print(languageLengthes)
        
        let squares = [0,1,2,3,4,5]
        
        let asdf = squares.map(yx)
        
        print(asdf)
        
        
        var oldLanguages = ["Object-C","Java","Smalltalk"]
        let newLanguages = ["Swift","Haskell","bErlang"]
        
        for var index in 0..<oldLanguages.count {
//            index = index + 1
            oldLanguages[index] = newLanguages[index]
        }
        
        print(oldLanguages)
        
        
        let randmLanguages = oldLanguages.map{ _ in randomElement(newLanguages)}
        
        print(randmLanguages)
        
        
        let numbers = [0,1,2,3,4,5]
        let startingWith = 0
        
        let sum = numbers.reduce(startingWith){
            (runingRun,currentNumber) in
            runingRun + currentNumber
        }
        
        print(sum)
        
        let myNumbers = [1,2,3,4,5]
        
        let tem  = myNumbers.reduce(0, combine: + )
        
        print(tem)
        
        
        // Do any additional setup after loading the view.
    }
    
       func randomElement(array:[String])->String{
        let randomIndex = randomPositiveNumberUpTo(array.count)
        return array[randomIndex]
    }
    
//    func combinator(accumlator:Int,current:Int)->Int{
//        return accumlator + current
//    }
//    
    
//    func rmap()
    
    
    
    func randomPositiveNumberUpTo(upperBound:Int)->Int{
        
//        var a = Int(arc4random() / UInt32(upperBound))
        
        return 0
    }
    func kx(array:[String])->Int{
     
        return 0
    }
    
    
    func yx(x:Int)->Int{
        
        return x*x
    }
    
    func fx(x:String)->Int{
        return x.characters.count
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

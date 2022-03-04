//
//  main.swift
//  02-里式替换原则
//
//  Created by XFB on 2022/3/4.
//

import Foundation

// 鸟
class Bird {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func fly() {
        print("\(self.name)开始飞行")
    }
}

let bird = Bird(name: "鸟")
bird.fly()


// 鸵鸟
class Ostrich: Bird {
    
    override func fly() {
        print("抱歉! 不能飞行")
    }
    
    func run() {
        print("\(self.name)极速奔跑")
    }
}

let ostrich = Ostrich(name: "鸵鸟")
ostrich.run()



class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Bird1: Animal {
    func fly() {
        print("\(self.name)开始飞行")
    }
}

let bird1 = Bird1(name: "鸟")

class Ostrich1: Animal {
    func run() {
        print("\(self.name)极速奔跑")
    }
}

let ostrich1 = Ostrich1(name: "鸵鸟")
ostrich1.run()

/**
 里式替换：
 
 应用在类的组织结构上，对于继承的设计，子类不可以重写父类的方法，只能为父类添加方法。
 
 */

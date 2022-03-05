//
//  main.swift
//  07-合成复用原则
//
//  Created by Fearless on 2022/3/5.
//

import Foundation

/**
 合成复用原则：核心是 在设计类复用时，尽量先使用组合 或 聚合 的方式设计，尽少使用数继承
 
 合成复用原则 与 里式替换原则是互为 补充的，提倡尽量不使用继承，如果使用继承，遵守里式替换原则，就是扩展父类，而不是重写父类方法
 
 */

//class Teacher {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//
//    func teach() {
//        print("\(self.name)开始讲课")
//    }
//}
//
//class MathTeacher: Teacher {
//    override func teach() {
//        print("\(self.name)开始讲数学课")
//    }
//}
//
//class NatureTeacher: Teacher {
//    override func teach() {
//        print("\(self.name)开始讲自然课")
//    }
//}
//
//let james = MathTeacher(name: "James")
//let james2 = NatureTeacher(name: "James2")
//james.teach()
//james2.teach()

class Teacher {
    var name: String
    var subject: Subject
    init(name: String, subject: String) {
        self.name = name
        self.subject = Subject(name: subject)
    }
    func teach() {
        print("\(self.name)开始讲\(self.subject.name)课")
    }
}

class Subject {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let james1 = Teacher(name: "James", subject: "数学")
let james2 = Teacher(name: "James2", subject: "自然")
james1.teach()
james2.teach()

//
//  main.swift
//  01-开闭原则
//
//  Created by XFB on 2022/3/4.
//

import Foundation

enum Color: String {
    case black = "black"
    case white = "white"
    case red = "red"
    case blue = "blue"
    case green = "green"
    case gray = "gray"
    case yellow = "yellow"
    case purple = "purple"
}

class Style {
    // 背景颜色
    var backgroundColor = Color.black
    // 字体颜色
    var textColor = Color.white
        
    func apply() {
        print("背景颜色：\(self.backgroundColor.rawValue), 文字颜色：\(self.textColor.rawValue)")
    }
}

let style = Style()
style.apply()


// 通过继承方式实现的开闭原则并不彻底，通过接口可以更好地实现开闭原则
class LightStyle: Style {
    
    var buttonColor = Color.red
    
    override init() {
        super.init()
        // 背景颜色
        self.backgroundColor = Color.white
        // 文字颜色
        self.textColor = Color.black
    }
    
    override func apply() {
        print("背景颜色：\(self.backgroundColor.rawValue), 文字颜色：\(self.textColor.rawValue), 按钮颜色：\(self.buttonColor)")
    }
}



// ========== 通过实现接口的方式 ==========
protocol StyleInterface {
    var backgroundColor: Color { get }
    var textColor: Color { get }
    var buttonColor: Color { get }
    func apply() -> Void
}

class BaseStyle: StyleInterface {
    var backgroundColor: Color {
        get {
            Color.white
        }
    }
    var textColor: Color {
        get {
            Color.red
        }
    }
    var buttonColor: Color {
        get {
            Color.black
        }
    }
    func apply() {
        print("背景颜色：\(self.backgroundColor.rawValue), 文字颜色：\(self.textColor.rawValue), 按钮颜色：\(self.buttonColor)")
    }
}

class DarkStyle: StyleInterface {
    var backgroundColor: Color {
        get {
            Color.black
        }
    }
    var textColor: Color {
        get {
            Color.purple
        }
    }
    var buttonColor: Color {
        get {
            Color.white
        }
    }
    func apply() {
        print("背景颜色：\(self.backgroundColor.rawValue), 文字颜色：\(self.textColor.rawValue), 按钮颜色：\(self.buttonColor)")
    }
}


let baseStyle = BaseStyle()
let darkStyle = DarkStyle()
baseStyle.apply()
darkStyle.apply()

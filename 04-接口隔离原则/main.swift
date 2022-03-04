//
//  main.swift
//  04-接口隔离原则
//
//  Created by XFB on 2022/3/4.
//

import Foundation

protocol UserInterfaceProtocol {
    var bannerData: String { get }
    var listData: String { get }
    func show()
}

class UserInterface: UserInterfaceProtocol {
    var bannerData: String {
        get {
            "广告数据加载完毕"
        }
    }
    
    var listData: String {
        get {
            "列表数据加载完毕"
        }
    }
    
    func show() {
        print("展示界面\(self.bannerData), \(self.listData)")
    }
}

let ui = UserInterface()
ui.show()

// 优化后的
let userInterface = UserInterface2()
userInterface.show()

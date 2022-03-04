//
//  main1.swift
//  04-接口隔离原则
//
//  Created by XFB on 2022/3/4.
//

import Foundation

protocol DataLoaderProtocol {
    func show()
}

protocol UserInterfaceProtocol2 {
    var bannerData: String { get }
    var listData: String { get }
}

class DataLoader: DataLoaderProtocol {
    func show() {}
    
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
}

class UserInterface2: UserInterfaceProtocol2 {
    var bannerData: String = ""
    var listData: String = ""
    
    func show() {
        let dataLoader = DataLoader()
        print("\(dataLoader.bannerData), \(dataLoader.listData)")
    }
}





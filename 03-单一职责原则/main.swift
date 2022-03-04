//
//  main.swift
//  03-单一职责原则
//
//  Created by XFB on 2022/3/4.
//

import Foundation

class UserInterface {
    var bannerData: String?
    var listData: String?
    
    func loadBannerData() {
        self.bannerData = "广告数据加载完成"
    }
    
    func loadListData() {
        self.listData = "列表数据加载完成"
    }
    
    func show() {
        self.loadBannerData()
        self.listData()
        print("展示界面：\(self.bannerData!), \(self.listData!)")
    }
}

let ui = UserInterface1()
ui1.show()


// 单一职责原则

class DataLoader {
    var bannerData: String?
    var listDats: String?
    
    func loadBannerData() {
        self.bannerData = "广告数据加载完毕"
    }
    
    func loadListData() {
        self.listDats = "列表数据加载完毕"
    }
    
    func getData() -> String {
        self.loadBannerData()
        self.loadListData()
        return "\(self.bannerData!), \(self.listDats!)"
    }
}

class UserInterface1 {
    func show() {
        print("展示界面：\(DataLoader().getData())")
    }
}

let ui1 = UserInterface1()
ui.show()




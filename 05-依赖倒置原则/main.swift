//
//  main.swift
//  05-依赖倒置原则
//
//  Created by XFB on 2022/3/4.
//

import Foundation

//class FoodStore {
//    func sell(count: Int) {
//        print("食品商店售卖了\(count)份食品")
//    }
//}
//
//class Customer {
//    func shopping(store: FoodStore, count: Int) {
//        print("用户购物")
//        store.sell(count: count)
//    }
//}
//
//let customer = Customer()
//customer.shopping(store: FoodStore(), count: 3)


// 优化1
protocol StoreProtocol {
    func sell(count: Int)
}

class FoodStore1: StoreProtocol {
    func sell(count: Int) {
        print("食品商店售卖了\(count)份食品")
    }
}

class Customer1 {
    func shopping(store: StoreProtocol, count: Int) {
        print("用户购物")
        store.sell(count: count)
    }
}

let customer = Customer1()
customer.shopping(store: FoodStore1(), count: 3)

//
//  main.swift
//  05-依赖倒置原则
//
//  Created by XFB on 2022/3/4.
//

/**
 依赖倒置原则：高层不应该依赖于底层，两者都依赖于抽象
 
 抽象 不应该 依赖于 细节，细节依赖于抽象
 
 依赖倒置原则 实现的核心是 面向接口编程
 
 
 */


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
protocol Store {
    func sell(count: Int)
}

// 食品商店
class FoodStore: Store {
    func sell(count: Int) {
        print("食品商店售卖了\(count)份食品")
    }
}

// 百货商店
class DepartmentStore: Store {
    func sell(count: Int) {
        print("百货商店售卖了\(count)份百货")
    }
}

// 顾客
class Customer {
    func shopping(store: Store, count: Int) {
        print("用户购物")
        store.sell(count: count)
    }
}

let customer = Customer()
customer.shopping(store: FoodStore(), count: 3)
customer.shopping(store: DepartmentStore(), count: 5)

//
//  SingleTon.swift
//  PassDataUseSingleton
//
//  Created by Hiếu Nguyễn on 7/19/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import Foundation


class SingleTon {
    static let sharedInstance: SingleTon = SingleTon()
    private var _numbers: [Int]?
    var numbers: [Int] {
        get {
            if _numbers == nil {
                addNew()
            }
            return _numbers!
        }
        set {
            _numbers = newValue
        }
    }
    func addNew() {
        _numbers = Array(9...20)
    }
    func edit(at index: Int , and number: Int) {
        _numbers?[index] = number
    }
    func addData(number: Int){
        _numbers?.append(number)
    }
}





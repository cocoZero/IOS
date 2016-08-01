//
//  SpecialItem.swift
//  NetShop
//
//  Created by ucsmy on 16/8/1.
//  Copyright © 2016年 ucsmy. All rights reserved.
//

import UIKit
enum SpecialsCategory:Int {
    case food = 0, drink, clothing, stationery, mobile
}
class SpecialItem: NSObject {
    let name: String;
    let brand: String;
    let category:SpecialsCategory!;
    let price:Double;
    let originalPrice:Double;
    let imageName: String;
    init(name:String,brand:String,category:SpecialsCategory,price:Double,originalPrice:Double,imageName:String) {
        
        self.name = name;
        self.brand = brand;
        self.category = category;
        self.price = price;
        self.originalPrice = originalPrice;
        self.imageName = imageName;
    }
    
}

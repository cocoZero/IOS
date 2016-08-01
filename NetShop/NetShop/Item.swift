//
//  Item.swift
//  NetShop
//
//  Created by ucsmy on 16/8/1.
//  Copyright © 2016年 ucsmy. All rights reserved.
//

import Foundation


class Item {
    
    var itemName:String = "";
    var brandName:String = "";
    var isBuy:Bool = false;
    
    init(item itemName: String, brandName: String, isBuy:Bool){
        self.itemName = itemName;
        self.brandName = brandName;
        self.isBuy = isBuy;
    }
    //便利构造器
    convenience init(itemName:String){
        self.init(item: itemName, brandName: "", isBuy: false);
    }
    //便利构造器
    convenience init(itemName:String,brandName: String){
        self.init(item:itemName,brandName: brandName,isBuy: false);
    }
    func description()->String{
        return "itemName: \(itemName) brandName: \(brandName) isBuy: \(isBuy)";
    }
}
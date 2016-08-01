//
//  ItemViewController.swift
//  NetShop
//
//  Created by ucsmy on 16/7/29.
//  Copyright © 2016年 ucsmy. All rights reserved.
//
//import Foundation
import UIKit

class ItemViewController: UIViewController {
    var item:Item?;
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemBrandLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    override func viewWillAppear(animated: Bool) {
        itemNameLabel.text = item?.itemName;
        itemBrandLabel.text = item?.brandName;
        if item?.isBuy == true {
            itemNameLabel.textColor = UIColor.greenColor();
        }else{
            itemNameLabel.textColor = UIColor.redColor();
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    @IBAction func buy(sender: AnyObject) {
        item?.isBuy = !(item?.isBuy)!;
        if item?.isBuy == true {
            itemNameLabel.textColor = UIColor.greenColor();
        }else{
            itemNameLabel.textColor = UIColor.redColor();
        }
        print(item?.description())
    }
    
}

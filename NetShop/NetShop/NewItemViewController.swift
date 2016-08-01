//
//  NewItemViewController.swift
//  NetShop
//
//  Created by ucsmy on 16/7/29.
//  Copyright © 2016年 ucsmy. All rights reserved.
//

import UIKit

protocol NewItemVCDelegate{
    func addNewItem(item:Item);
}
class NewItemViewController: UIViewController {
    @IBOutlet weak var itemNameTextField: UITextField!;
    
    @IBOutlet weak var itemBrandTextField: UITextField!;
    
    var delegate:NewItemVCDelegate! = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    @IBAction func saveItemInfo(sender: AnyObject) {
        if itemNameTextField.text != nil && itemBrandTextField.text != nil {
            let item = Item(item:itemNameTextField.text!,brandName:itemBrandTextField.text!,isBuy:false);
            delegate.addNewItem(item);
            self .dismissViewControllerAnimated(true, completion: nil)
        }
        
    }
}


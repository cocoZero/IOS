//
//  ViewController.swift
//  NetShop
//
//  Created by ucsmy on 16/7/29.
//  Copyright © 2016年 ucsmy. All rights reserved.
//

import UIKit      

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,NewItemVCDelegate{

    //let buyItems = [("牛奶","伊利"),("红烧牛肉面","康师傅"),("凉茶","王老吉"),("","3元"),("巧克力","德芙"),("洗发水","霸王")];
    var buyItems = [Item(itemName:"牛奶",brandName: "燕塘"),
                    Item(itemName:"红烧牛肉面",brandName: "康师傅"),
                    Item(itemName:"桃子",brandName: "新农夫"),
                    Item(itemName:"矿泉水",brandName: "农夫山泉"),
                    Item(itemName:"饮料",brandName: "脉动"),
                    Item(itemName:"花露水",brandName: "六神"),
                    Item(itemName:"面条",brandName: "陈克明"),
                    Item(itemName:"八宝粥",brandName: "银鹭"),
                    ];
    @IBOutlet weak var sellList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        sellList .reloadData();
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "itemSegue"){
            let  destination:ItemViewController = segue.destinationViewController as! ItemViewController;
            if sender is Int {
                let item:Item = buyItems[sender as! Int];
                destination.item = item;
            }
        }else if segue.identifier == "newItemSegue" {
            var destination: NewItemViewController = segue.destinationViewController as! NewItemViewController;
            destination.delegate = self;
        }
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return buyItems.count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cell");
        let item:Item = buyItems[indexPath.row];
        cell.textLabel?.text = item.itemName;
        if item.isBuy {
            cell.textLabel?.textColor = UIColor.greenColor();
        }else{
            cell.textLabel?.textColor = UIColor.redColor();
        }
        cell.detailTextLabel?.text = item.brandName;
        return cell;
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("itemSegue", sender: indexPath.row)
    }

    func addNewItem(item: Item) {
        buyItems .append(item);
        sellList .reloadData();
    }
}


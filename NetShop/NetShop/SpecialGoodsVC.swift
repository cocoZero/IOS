//
//  SpecialGoodsVC.swift
//  NetShop
//
//  Created by ucsmy on 16/8/1.
//  Copyright © 2016年 ucsmy. All rights reserved.
//

import UIKit

class SpecialGoodsVC: UITableViewController {
    let specialItems = [
                        SpecialItem(name: "西梅", brand: "超达", category: SpecialsCategory.food, price: 2.8, originalPrice: 5.98, imageName: "ximei"),
                        SpecialItem(name: "iphone5s", brand: "Apple", category: SpecialsCategory.mobile, price: 2688, originalPrice: 5388, imageName: "iphone5s"),
                        SpecialItem(name: "好多鱼", brand: "好丽友", category: SpecialsCategory.food, price: 11.8, originalPrice: 13.5, imageName: "haoduoyu"),
                        SpecialItem(name: "天然水", brand: "农夫山泉", category: SpecialsCategory.drink, price: 26.9, originalPrice: 32.0, imageName: "tianranshui"),
                        SpecialItem(name: "柠檬片", brand: "鲜引力", category: SpecialsCategory.food, price: 2.9, originalPrice: 3.8, imageName: "ningmengpian"),
                        SpecialItem(name: "杏仁露", brand: "露露", category: SpecialsCategory.drink, price: 4.8, originalPrice: 7.6, imageName: "xinrenlu"),
                        SpecialItem(name: "mx6", brand: "魅族", category: SpecialsCategory.mobile, price: 1999, originalPrice: 2099, imageName: "mx6"),
                        SpecialItem(name: "仙贝", brand: "旺旺", category: SpecialsCategory.food, price: 20.8, originalPrice: 28.98, imageName: "xianbei"),
                        ];
    var categorySpecials = [Int:[SpecialItem]]();

    override func viewDidLoad() {
        super.viewDidLoad()
        for special in specialItems{
            if categorySpecials[special.category.rawValue] == nil {
                categorySpecials[special.category.rawValue] = [special];
            }else{
                categorySpecials[special.category.rawValue]?.append(special);
            }
        }

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return categorySpecials.count;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let categorys = Array(categorySpecials.keys);
        return categorySpecials[categorys[section]]!.count;
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:SpecialGoodCell = tableView.dequeueReusableCellWithIdentifier("SpecialCell", forIndexPath: indexPath) as! SpecialGoodCell;
        

        // Configure the cell...
        
        let categorys = Array(categorySpecials.keys);
        var special = categorySpecials[categorys[indexPath.section]]![indexPath.row];
        cell.nameLabel?.text = special.name;
        //cell.priceLabel?.text = special.price;
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

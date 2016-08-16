//
//  SelectStepViewController.swift
//  crazyIdiom
//
//  Created by ucsmy on 16/8/16.
//  Copyright © 2016年 zero. All rights reserved.
//

import UIKit

class SelectStepViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc:GuessViewController = segue.destinationViewController as! GuessViewController;
        let id:String = segue.identifier!;
        switch id {
        case "one":
            vc.step = GameStep.one;
            break;
        case "two":
            vc.step = GameStep.two;
            break;
        case "three":
            vc.step = GameStep.three;
            break;
        case "four":
            vc.step = GameStep.four;
            break;
        default:
            break;
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

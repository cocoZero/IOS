//
//  ViewController.swift
//  ImageViewer
//
//  Created by ucsmy on 16/8/15.
//  Copyright © 2016年 zero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonTwo.transform=CGAffineTransformMakeRotation(60*3.14159/180);
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewWillAppear(animated: Bool) {
        buttonOne.hidden = true;
        buttonTwo.hidden = true;
        buttonThree.hidden = true;
       
        self.performSelector(#selector(showIndex), withObject: NSNumber.init(integer: 1), afterDelay: 0.5)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc:ImageDetailViewController = segue.destinationViewController as! ImageDetailViewController;
        switch segue.identifier! {
        case "segueOne":
            vc.imageNames = ["2.jpg","5.jpg","6.jpg"];
            
            break;
        case "segueTwo":
            vc.imageNames = ["1.jpg","3.jpg","4.jpg"];
            break;
        case "segueThree":
            vc.imageNames = ["7.jpg","8.jpg","9.jpg"];
            break;
        default:break;
        }
        
    }
    
    /*
    @IBAction func oneTouched(sender: AnyObject) {
        let Sb:UIStoryboard = UIStoryboard(name: "Main", bundle: nil);
        
        let vc:ImageDetailViewController = Sb.instantiateViewControllerWithIdentifier("detail") as!ImageDetailViewController;
        vc.imageNames = ["2.jpg","5.jpg","6.jpg"];
        vc.view.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height);
        //buttonOne.transform = CGAffineTransformMakeScale(1.2, 1.2);
        let t:CATransition = CATransition();
        
        t.duration=1;
        t.type=kCATransitionMoveIn;
        t.subtype=kCATransitionFromTop;
        self.view .addSubview(vc.view);
        //self.view.layer .addAnimation(t, forKey: nil);
    }
 */
    @objc func showIndex(index:NSNumber) -> Void {
        var i:Int = index.integerValue;
        if i==1{
            buttonOne.hidden = false;
            self.performSelector(#selector(showIndex), withObject: NSNumber.init(integer: 2), afterDelay: 1.0)
        }
        if i==2{
            self.performSelector(#selector(showIndex), withObject: NSNumber.init(integer: 3), afterDelay: 1.0)
            buttonTwo.hidden = false;
        }
        if i==3{
            buttonThree.hidden = false;
            
        }
    }

}


//
//  GuessViewController.swift
//  crazyIdiom
//
//  Created by ucsmy on 16/8/16.
//  Copyright © 2016年 zero. All rights reserved.
//

import UIKit
enum GameStep:Int {
    case one = 0,two,three,four
}
class GuessViewController: UIViewController,UIAlertViewDelegate {
    var step:GameStep?;
        
    @IBOutlet weak var idiomTextField: UITextField!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var idiomImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self .setView();
        // Do any additional setup after loading the view.
    }

    func setView(){
        switch step! {
        case .one:
            bgImage.image = UIImage(named: "10.jpg");
            idiomImage.image = UIImage(named: "5.jpg");
            break;
        case .two:
            bgImage.image = UIImage(named: "11.jpg");
            idiomImage.image = UIImage(named: "7.jpg");
            break;
        case .three:
            bgImage.image = UIImage(named: "13.jpg");
            idiomImage.image = UIImage(named: "8.jpg");
            break;
        case .four:
            bgImage.image = UIImage(named: "12.jpg");
            idiomImage.image = UIImage(named: "6.jpg");
            break;
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submit(sender: AnyObject) {
        idiomTextField.resignFirstResponder();
        switch step! {
        case .one:
            
            if idiomTextField.text == "声东击西" {
                
                let alert:UIAlertView = UIAlertView.init(title: "恭喜你闯关成功", message: "声东击西：它以假动作欺敌，掩护主力在第一时间击其要害。", delegate: self, cancelButtonTitle: "确定", otherButtonTitles: "进入下一关");
                alert .show();
            }else{
                let alert:UIAlertView = UIAlertView.init(title: "继续加油", message: "", delegate: nil, cancelButtonTitle: "确定");
                alert.show();
                
            }
            
            

            break;
        case .two:
            if idiomTextField.text == "盲人摸象" {
                
                let alert:UIAlertView = UIAlertView.init(title: "恭喜你闯关成功", message: "盲人摸象：比喻看问题总是一点代面、以偏概全。寓言讽刺的对象是目光短裙的人。", delegate: self, cancelButtonTitle: "确定", otherButtonTitles: "进入下一关");
                alert .show();
            }else{
                let alert:UIAlertView = UIAlertView.init(title: "继续加油", message: "", delegate: nil, cancelButtonTitle: "确定");
                alert.show();
                
            }
            break;
        case .three:
            if idiomTextField.text == "一手遮天" {
                
                let alert:UIAlertView = UIAlertView.init(title: "恭喜你闯关成功", message: "一手遮天：意指仗势欺人，玩弄手段，欺上瞒下。", delegate: self, cancelButtonTitle: "确定", otherButtonTitles:"进入下一关");
                alert .show();
            }else{
                let alert:UIAlertView = UIAlertView.init(title: "继续加油", message: "", delegate: nil, cancelButtonTitle: "确定");
                alert.show();
                
            }
            break;
        case .four:
            if idiomTextField.text == "鹤立鸡群" {
                
                let alert:UIAlertView = UIAlertView.init(title: "恭喜你闯关成功", message: "鹤立鸡群：比喻人的才华或者仪表卓然出众。", delegate: self, cancelButtonTitle: "确定", otherButtonTitles: "结束游戏");
                alert .show();
            }else{
                let alert:UIAlertView = UIAlertView.init(title: "继续加油", message: "", delegate: nil, cancelButtonTitle: "确定");
                alert.show();
                
            }
            break;
            
        }
    }

    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == 0{
            self .dismissViewControllerAnimated(true, completion: { 
                
            });
        }
        if(buttonIndex == 1){
            if step == GameStep.four{
                self .dismissViewControllerAnimated(true, completion: { 
                    
                });
            }else{
                step = GameStep(rawValue: (step?.rawValue)!+1);
                self .setView();
            }
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

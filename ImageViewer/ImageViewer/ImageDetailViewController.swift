//
//  ImageDetailViewController.swift
//  ImageViewer
//
//  Created by ucsmy on 16/8/16.
//  Copyright © 2016年 zero. All rights reserved.
//

import UIKit

class ImageDetailViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    var imageNames:Array<String>?;
    @IBOutlet weak var showImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name:String = imageNames![0]{
            showImageView.image = UIImage(named: name)
        }
                // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
       @IBAction func change(sender: AnyObject) {
        if let name:String = imageNames![sender.currentPage]{
            showImageView.image = UIImage(named: name)
        }
        UIView.beginAnimations("", context: nil);
        UIView.setAnimationCurve(UIViewAnimationCurve.EaseInOut)
        UIView.setAnimationDuration(1);
        UIView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: showImageView, cache: true);
        UIView.commitAnimations();
    }
    @IBOutlet weak var back: UIButton!
    @IBAction func backToMain(sender: AnyObject) {
        self .dismissViewControllerAnimated(true) { 
            
        };
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

//
//  ViewController.swift
//  ikid
//
//  Created by Anni Yan on 2/4/19.
//  Copyright © 2019 Anni Yan. All rights reserved.
//

import UIKit

class SwitchingViewController: UIViewController {
    
    var Good : Good? = nil
    var Pun : Pun? = nil
    var Dad : Dad? = nil
    var Home : Home? = nil
    
    fileprivate func firstBuilder() {
        if Good == nil {
            Good =
                storyboard?
                    .instantiateViewController(withIdentifier: "first")
                as! Good
        }
    }
    fileprivate func secondBuilder() {
        if Pun == nil {
            Pun =
                storyboard?
                    .instantiateViewController(withIdentifier: "second")
                as! Pun
        }
    }
    fileprivate func thirdBuilder() {
        if Dad == nil {
            Dad =
                storyboard?
                    .instantiateViewController(withIdentifier: "third")
                as! Dad
        }
    }
    fileprivate func fourthBuilder() {
        if Home == nil {
            Home =
                storyboard?
                    .instantiateViewController(withIdentifier: "fourth")
                as! Home
        }
    }
    
    @IBAction func toGood(_ sender: Any) {
        firstBuilder()
        secondBuilder()
        thirdBuilder()
        fourthBuilder()
        
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(1.0)
        UIView.setAnimationCurve(.easeInOut)
        if Dad != nil &&
            Dad?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Good!.view.frame = view.frame
            switchViewController(Dad, to: Good)
        } else if Pun != nil &&
            Pun?.view.superview != nil{
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Good!.view.frame = view.frame
            switchViewController(Pun, to: Good)
        } else if Home != nil &&
            Home?.view.superview != nil{
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Good!.view.frame = view.frame
            switchViewController(Home, to: Good)
        }
        UIView.commitAnimations()
    }
    @IBAction func toPun(_ sender: Any) {
        firstBuilder()
        secondBuilder()
        thirdBuilder()
        fourthBuilder()
        
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(1.0)
        UIView.setAnimationCurve(.easeInOut)
        if Dad != nil &&
            Dad?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Pun!.view.frame = view.frame
            switchViewController(Dad, to: Pun)
        } else if Good != nil &&
            Good?.view.superview != nil{
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Pun!.view.frame = view.frame
            switchViewController(Good, to: Pun)
        } else if Home != nil &&
            Home?.view.superview != nil{
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Pun!.view.frame = view.frame
            switchViewController(Home, to: Pun)
        }
        UIView.commitAnimations()
    }
    
    @IBAction func toDad(_ sender: Any) {
        firstBuilder()
        secondBuilder()
        thirdBuilder()
        fourthBuilder()
        
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(1.0)
        UIView.setAnimationCurve(.easeInOut)
        if Good != nil &&
            Good?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Dad!.view.frame = view.frame
            switchViewController(Good, to: Dad)
        } else if Pun != nil &&
            Pun?.view.superview != nil{
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Dad!.view.frame = view.frame
            switchViewController(Pun, to: Dad)
        } else if Home != nil &&
            Home?.view.superview != nil{
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Dad!.view.frame = view.frame
            switchViewController(Home, to: Dad)
        }
        UIView.commitAnimations()
    }
    
    @IBAction func toHome(_ sender: Any) {
        firstBuilder()
        secondBuilder()
        thirdBuilder()
        fourthBuilder()
        
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(1.0)
        UIView.setAnimationCurve(.easeInOut)
        if Good != nil &&
            Good?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Home!.view.frame = view.frame
            switchViewController(Good, to: Home)
        } else if Pun != nil &&
            Pun?.view.superview != nil{
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Home!.view.frame = view.frame
            switchViewController(Pun, to: Home)
        } else if Dad != nil &&
            Dad?.view.superview != nil{
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            Home!.view.frame = view.frame
            switchViewController(Dad, to: Home)
        }
        UIView.commitAnimations()
    }
    
    
    
    fileprivate func switchViewController(_ from: UIViewController?, to: UIViewController?) {
        if from != nil {
            from!.willMove(toParent: nil)
            from!.view.removeFromSuperview()
            from!.removeFromParent()
        }
        
        if to != nil {
            self.addChild(to!)
            self.view.insertSubview(to!.view, at: 0)
            to!.didMove(toParent: self)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        fourthBuilder()
        switchViewController(nil, to: Home)
    }
    
    
}


//
//  ViewController.swift
//  TapTime
//
//  Created by Jessica Cavazos on 11/22/14.
//  Copyright (c) 2014 JessicaCavazos. All rights reserved.
//

import UIKit
import Foundation
import Darwin

class ViewController: UIViewController {
    
    var timerCount = 15
    var timerRunning = false
    var timer = NSTimer()
    var score = 0
    var clickedbtn = 0
    var rdmnumber = 1
    
    @IBOutlet var lblscoregotten: UILabel!
    @IBOutlet var lblscore: UILabel!
    @IBOutlet var ScoreView: UIView!
    @IBOutlet var GameView: UIView!
    @IBOutlet var MainView: UIView!
    @IBOutlet var lblTime: UILabel!
    @IBOutlet var lblTryagain: UILabel!
    @IBOutlet var lblnumber: UILabel!
    
    func Counting (){
        timerCount -= 1
        lblTime.text = "\(timerCount)"
        if (timerCount==0){
            ScoreView.hidden = false
            GameView.hidden = true
            MainView.hidden = true
            lblscoregotten.text = "\(score)"
        }
    }
    
    @IBAction func RePlay(sender: UIButton) {
            ScoreView.hidden = true
            MainView.hidden = true
            GameView.hidden = false
            score = 0
            lblscore.text = "\(score)"
            timerCount = 15
            if timerRunning == false {
                timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
        }
    }
    @IBAction func btnPlay(sender: UIButton) {
        MainView.hidden = true
        GameView.hidden = false
        if timerRunning == false {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
        }
    }
    
    
    @IBAction func btnTap1(sender: AnyObject) {
        clickedbtn = 1
        if (clickedbtn == rdmnumber){
            score += 50
            lblscore.text = "\(score)"
            rdmnumber = Int(arc4random_uniform(4))+1
            lblnumber.text = "\(rdmnumber)"
        }
        else {
            lblTryagain.text = "Try Again"
            score -= 10
            lblscore.text = "\(score)"
        }
    }
    @IBAction func btnTap2(sender: AnyObject) {
        clickedbtn = 2
        if (clickedbtn == rdmnumber){
            score += 50
            lblscore.text = "\(score)"
            rdmnumber = Int(arc4random_uniform(4))+1
            lblnumber.text = "\(rdmnumber)"
        }
        else {
            lblTryagain.text = "Try Again"
            score -= 10
            lblscore.text = "\(score)"
        }
    }
    @IBAction func btnTap3(sender: AnyObject) {
        clickedbtn = 3
        if (clickedbtn == rdmnumber){
            score += 50
            lblscore.text = "\(score)"
            rdmnumber = Int(arc4random_uniform(5))+1
            lblnumber.text = "\(rdmnumber)"
        }
        else {
            lblTryagain.text = "Try Again"
            score -= 10
            lblscore.text = "\(score)"
        }
    }
    @IBAction func btnTap4(sender: AnyObject) {
        clickedbtn = 4
        if (clickedbtn == rdmnumber){
            score += 50
            lblscore.text = "\(score)"
            rdmnumber = Int(arc4random_uniform(5))+1
            lblnumber.text = "\(rdmnumber)"
        }
        else {
            lblTryagain.text = "Try Again"
            score -= 10
            lblscore.text = "\(score)"
        }
    }
    @IBAction func btnTap5(sender: AnyObject) {
        clickedbtn = 5
        if (clickedbtn == rdmnumber){
            score += 50
            lblscore.text = "\(score)"
            rdmnumber = Int(arc4random_uniform(5))+1
            lblnumber.text = "\(rdmnumber)"
        }
        else {
            lblTryagain.text = "Try Again"
            score -= 10
            lblscore.text = "\(score)"
        }
    }

}


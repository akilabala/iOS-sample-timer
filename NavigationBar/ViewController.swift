//
//  ViewController.swift
//  NavigationBar
//
//  Created by Akila Balasubramanian on 11/8/15.
//  Copyright © 2015 Fun App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    var timer = NSTimer()
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    @IBAction func start(sender: UIBarButtonItem) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func stop(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    @IBAction func reset(sender: UIBarButtonItem) {
        time = 0
        timerLabel.text = String(time)
        timer.invalidate()
    }
    
    func result() {
        time++
        timerLabel.text = String(time)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var timer = NSTimer()
//        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
//        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


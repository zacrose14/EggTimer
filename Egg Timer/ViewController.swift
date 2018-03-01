//
//  ViewController.swift
//  Egg Timer
//
//  Created by Zac Rose on 3/17/17.
//  Copyright © 2017 Zac Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var time = 210
    
    func decreaseTimer() {
       
        if time > 0 {
        
        time = time - 1
        
            timerLabel.text = String(time)
        } else {
            timer.invalidate()
        }
        
    }
    
    @IBAction func pauseButtonPressed(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @IBAction func playButtonPressed(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
        }
    
    @IBAction func minusTen(_ sender: Any) {
        
        if time > 10 {
        
        time -= 10
        
        timerLabel.text = String(time)
        
        }
        
    
    }
    @IBAction func resetButtonPressed(_ sender: Any) {
        
        time = 210
        
        timerLabel.text = String(time)
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        
        time += 10
        
        timerLabel.text = String(time)
    }
    
    @IBOutlet weak var timerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


//
//  ViewController.swift
//  StopWatch
//
//  Created by Alex Yang on 2/16/17.
//  Copyright © 2017 Alex Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timerInstance:Timer? = nil
    var stopwatch:StopWatch? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var Time: UILabel!
    @IBAction func whenStopPressed(_ sender: UIButton) {
        if(timerInstance != nil){
            timerInstance!.invalidate()
        }
    }
    @IBAction func whenStartPressed(_ sender: UIButton) {
        stopwatch = StopWatch.init()
        timerInstance = Timer.scheduledTimer(timeInterval: 0.1, target: self,
                                             selector: #selector(ViewController.updateTime(_:)),
                                             userInfo: nil,
                                             repeats: true)
    }
    
    func updateTime(_ timer: Timer){
        Time.text = stopwatch!.updateTimer()
        //Time.text = String(timedif)
    }
}


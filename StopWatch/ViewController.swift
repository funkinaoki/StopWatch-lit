//
//  ViewController.swift
//  StopWatch
//
//  Created by 八幡尚希 on 2021/02/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    //floatは小数のための変数の方
    var count: Float = 0.00
    
    var timer: Timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start(){
        
        if !timer.isValid{
            
            timer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target: self,
                                         selector: #selector(self.up),
                                         userInfo: nil,
                                         repeats: true)
        }
    }
    
    @IBAction func stop(){
        if timer.isValid{
            timer.invalidate()
        }
    }
    
    @objc func up(){
        count = count + 0.01
        
        label.text = String(format: "%.2f", count)
    }


}


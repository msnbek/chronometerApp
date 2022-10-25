//
//  ViewController.swift
//  TimerApp
//
//  Created by Mahmut Şenbek on 25.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    var timer = Timer()
    
    
    @IBOutlet weak var labelText: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func pauseButton(_ sender: Any) {
        
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        labelText.text = String(counter)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(playFunc), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func tenMinus(_ sender: Any) {
        if counter >= 10 {
            labelText.text = String(counter)
            counter -= 10
        }
        
        
        
    }
    @IBAction func tenPlus(_ sender: Any) {
        if counter >= 0 {
            labelText.text = String(counter)
            counter += 10
        }
      
        
    }
    
    @objc func playFunc() {
        
        if counter >= 0 {
            counter += 1
            labelText.text = String(counter)
        }
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        counter = 0
        self.labelText.text = String(counter)
        timer.invalidate()
    }
    
}


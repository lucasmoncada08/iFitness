//
//  ViewController.swift
//  Workout App
//
//  Created by Lucas Moncada on 2020-09-24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    
    var forwardProgress: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func checkForm() {
        if progressBar.progress < 1.0 && forwardProgress {
            progressBar.progress += 0.02
            if progressBar.progress == 1.0 {
                forwardProgress = false
            }
        }
        
        if progressBar.progress > 0.0 && !forwardProgress {
            progressBar.progress -= 0.02
            if progressBar.progress == 0.0 {
                forwardProgress = true
            }
        }
    }
    
    @IBAction func correctForm(_ sender: Any) {
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(checkForm), userInfo: nil, repeats: true)
    }
    
}


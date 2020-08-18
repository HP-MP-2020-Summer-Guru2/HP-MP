//
//  FirstViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/14.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var waterFlow: UIImageView!
    @IBOutlet var numImageView1: UIImageView!
    @IBOutlet var SleepButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SleepButton.layer.cornerRadius = SleepButton.frame.size.width
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapAnimations)))

    }
    
//    @IBAction func ButtonMove(_ sender: Any) {
//
//    }
    
    
    @objc fileprivate func handleTapAnimations() {
        
    
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            self.waterFlow.transform = CGAffineTransform(translationX: 0, y: -40)
            
        }) { (_) in
            }
            
            
            
//            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
//
//                self.waterFlow.transform = self.waterFlow.transform.translatedBy(x: 0, y: -150)
//
//            })

            
        }
    }
    
    
    
    
    
    func abc () {
        
    }





//
//  FirstViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/14.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit
//500 = 0.5L
//2L
class FirstViewController: UIViewController {
    var cupWater: Double = 0.5 //한 컵 기준
    var todayWater: Double = 0.0 //시작
    var myWater: Double? // button 누를때 마다 변함
    @IBOutlet var numImageView1: UIImageView!
    @IBOutlet var SleepButton: UIButton!
    @IBOutlet var waterButton: UIButton!
    @IBOutlet var totalAmountOfWater: UILabel!
    @IBAction func minusClick(_ sender: Any) {
        totalAmountOfWater.text = "바뀌었는지 확인"
    }
    
    @IBAction func waterButtonClicked(_ sender: UIButton) {
        //if문 검사하는 넣기 , todaywater == 2L면 안차오르게 or 다 마셨어요

        
//         else           이 위치에 차오르게 하기
        // todayWater += 0.5
        
            self.waterButton.transform = CGAffineTransform(translationX: 0, y: -40)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        SleepButton.layer.cornerRadius = SleepButton.frame.size.width
//
//        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapAnimations)))

    }
    
//    @IBAction func ButtonMove(_ sender: Any) {
//
//    }
    
    
//    @objc fileprivate func handleTapAnimations() {
//
//
//        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
//
//            self.waterFlow.transform = CGAffineTransform(translationX: 0, y: -40)
//
//        }) { (_) in
//            }
//
//
//
////            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
////
////                self.waterFlow.transform = self.waterFlow.transform.translatedBy(x: 0, y: -150)
////
////            })
//
//
//        }
    }
    
    
    
    
    
    func abc () {
        
    }





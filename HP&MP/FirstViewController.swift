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
class FirstViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var cupWater: Double = 0.5 //한 컵 기준
    var todayWater: Double = 2.0 //시작
    var myWater: Double = 0.0 // button 누를때 마다 변하게 해야 함
    var num: Int = 0
    
    @IBOutlet var SleepButton: UIButton!
    @IBOutlet var ExerciseButton: UIButton!
    @IBOutlet var waterButton: UIButton!
    
    @IBOutlet var totalAmountOfWater: UILabel!
    @IBOutlet var waterFlow: UIImageView!
    
    @IBOutlet weak var imageHolder: UIImageView!
    @IBOutlet weak var imageHolder2: UIImageView!
    
//    @IBAction func chooseSleepingHour(_ sender: Any) {
//        let imagePickerController = UIImagePickerController()
//        imagePickerController.delegate = self
//    }
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        let image = info[UIImagePickerControllerOriginalImage]
//    }

    
    
    
    @IBAction func minusClick(_ sender: Any) {
        if todayWater == 0 {
            totalAmountOfWater.text = "최소: 1L"
        }
        else
        {
            todayWater -= 1
            totalAmountOfWater.text = String(Int(todayWater)) + "L"
        }
        
    }
    
    @IBAction func plusClick(_ sender: Any) {
         if todayWater == 6 {
            totalAmountOfWater.text = "최대: 6L"
        }
        else
        {
            todayWater += 1
            totalAmountOfWater.text = String(Int(todayWater)) + "L"
        }
    }
    
    @IBAction func waterButtonClicked(_ sender: UIButton) {
        //if문 검사하는 넣기 , todaywater == 2L면 안차오르게 or 다 마셨어요
        
        if myWater == todayWater {
            totalAmountOfWater.text = "오늘의 목표량 달성"
        }
        //         else           이 위치에 차오르게 하기
        // todayWater += 0.5
        else {
            
            myWater += cupWater
                    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                        
 
            
                        self.num += 1
                        self.waterFlow.transform = CGAffineTransform(translationX: 0, y: CGFloat(-110 / Int(self.todayWater) * self.num))

            
                    })
        }
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    override func viewWillAppear(_ animated: Bool) {
    print("hi")
//         String(UserDefaults.standard.object(forKey: "TimeNumber") ?? 1) + ".png"
        //label.image = UIImage(name: HERE)
    }
    override func viewDidAppear(_ animated: Bool) {
        print("h2i")
    }
    

    
    
    
    
    func abc () {
        
    }




}

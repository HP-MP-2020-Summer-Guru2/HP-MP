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
    var finalSend = ""
    var finalSend2 = ""
    
    
    @IBOutlet var SleepButton: UIButton!
    @IBOutlet var ExerciseButton: UIButton!
    @IBOutlet var waterButton: UIButton!
    
    @IBOutlet var totalAmountOfWater: UILabel!
    @IBOutlet var waterFlow: UIImageView!
    
    
    @IBOutlet var SuccessOutput: UILabel!
    @IBOutlet var enterLabel: UILabel!
    @IBOutlet var enterLabel2: UILabel!
    
    
    
    
    @IBAction func minusClick(_ sender: Any) {
        //버튼 클릭 시 수분 섭취 목표량 -변경
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
        //버튼 클릭 시 수분 섭취 목표량 +변경
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
        //if문 검사하는 넣기 , todaywater == 2L면 안차오르게 and 목표량 달성 문구
        
        if myWater == todayWater {
            SuccessOutput.text = "오늘의 목표량 달성"
        }
        //         else           이 위치에 차오르게 하기
        // todayWater += 0.5
        else {
            //버튼 클릭 시 waterFlow의 움직임
            myWater += cupWater
                    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                        
 
            
                        self.num += 1
                        self.waterFlow.transform = CGAffineTransform(translationX: 0, y: CGFloat(-110 / Int(self.todayWater) * self.num))

            
                    })
        }
        
    }
    
    
    @IBAction func SleepButton(_ sender: Any) {
        guard let HourPush = self.storyboard?.instantiateViewController(identifier: "ChooseHourViewController") as? ChooseHourViewController else {return}
        
        self.navigationController?.pushViewController(HourPush, animated: true)
    }
    
    @IBAction func ExerciseButton(_ sender: Any) {
        guard let HourPush2 = self.storyboard?.instantiateViewController(identifier: "ChooseHour2ViewController") as? ChooseHour2ViewController else {return}
        
        self.navigationController?.pushViewController(HourPush2, animated: true)
    }
    

        
    override func viewDidLoad() {
        
        UserDefaults.standard.setValue(0, forKey: "hi")
        UserDefaults.standard.setValue(0, forKey: "hello")
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    override func viewWillAppear(_ animated: Bool) {

       enterLabel2.text = UserDefaults.standard.object(forKey: "hi") as? String
        
       enterLabel.text = UserDefaults.standard.object(forKey: "hello") as? String
        
    }
    
    
    
    func abc () {
        
    }




}

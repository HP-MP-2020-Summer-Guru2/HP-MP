//
//  FirstViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/14.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit

// 첫번째 탭 : 메인탭(목표치를 설정 탭)
class FirstViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var cupWater: Double = 0.5 // 생수 한 컵
    var todayWater: Double = 2.0 // 목표 수분 섭취량
    var myWater: Double = 0.0 // 내가 마신 수분섭취량
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
        if todayWater == 6 { // 최대 목표에 도달함
            totalAmountOfWater.text = "최대: 6L"
        }
        else
        {
            todayWater += 1
            totalAmountOfWater.text = String(Int(todayWater)) + "L"
        }
    }
    
    @IBAction func waterButtonClicked(_ sender: UIButton) {
        if myWater == todayWater { //내가 마신 수분 섭취량이 오늘의 목표를 다 채웠다면
            SuccessOutput.text = "오늘의 목표량 달성"
        } else { // 아직 목표를 다 채우지 못했다면 물이 채워지는 애니메이션 동작하기
            myWater += cupWater
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
                self.num += 1
                self.waterFlow.transform = CGAffineTransform(translationX: 0, y: CGFloat(-110 / Int(self.todayWater) * self.num))
            })
        }
        
    }
    
    //수면 목표량 설정 들어가기
    @IBAction func SleepButton(_ sender: Any) {
        guard let HourPush = self.storyboard?.instantiateViewController(identifier: "ChooseHourViewController") as? ChooseHourViewController else {return}
        // 수면 목표량 viewcontroller로 navigation을 이용해 이동하기
        self.navigationController?.pushViewController(HourPush, animated: true)
    }
    
    //운동 목표량 설정 들어가기
    @IBAction func ExerciseButton(_ sender: Any) {
        guard let HourPush2 = self.storyboard?.instantiateViewController(identifier: "ChooseHour2ViewController") as? ChooseHour2ViewController else {return}
        // 운동 목표량 viewcontroller로 navigation을 이용해 이동하기
        self.navigationController?.pushViewController(HourPush2, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        
        UserDefaults.standard.setValue(0, forKey: "sleep")
        UserDefaults.standard.setValue(0, forKey: "health")
        //공유객체 초기화
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        // navigationController 안보이게 설정
    }
    

    override func viewWillAppear(_ animated: Bool) {
        
        enterLabel2.text = UserDefaults.standard.object(forKey: "sleep") as? String
        enterLabel.text = UserDefaults.standard.object(forKey: "health") as? String
        //pickerview로 목표를 설정하고 돌아올 때 공유객체인 UserDefaults를 사용해서 수면, 운동 값들 label에 전달받기
    }
    
    
}

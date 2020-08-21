//
//  ChooseHour2ViewController.swift
//  HP&MP
//
//  Created by 윤영서 on 2020/08/20.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit

class ChooseHour2ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
   let MAX_ARRAY_NUM = 12
   let PICKER_VIEW_HEIGHT: CGFloat = 110
   let PICKER_VIEW_COLUMN = 1
   var imageArray = [UIImage?]()
   var imageFileName = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    var numberText = ""
    
    @IBOutlet var dismissButton: UIButton!
    @IBOutlet var pickerHour: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2
        // Do any additional setup after loading the view.
        //0부터 MAX까지 루프 실행
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image) // 이미지 추가
        }
        
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }
  
    //피커뷰 컴포넌트 수 설정
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    //룰렛 높이 설정
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    //피커 뷰 개수 설정
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }

    //피커뷰의 각 row 의 view 설정
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image:imageArray[row])
        imageView.frame = CGRect(x:0, y:0, width: 100, height: 150)
        
        return imageView
    }
    
    //피커뷰 선택 시 실행
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
        
    }
    
    //dismiss 버튼
    @IBAction func dismissThirdVC(_ sender: Any) {

        self.navigationController?.popViewController(animated: true)

    }

    //lblImageFileName 값저장
    @IBAction func sendNumber(_ sender: Any) {
        UserDefaults.standard.setValue(lblImageFileName.text, forKey: "hello")    }
    



}

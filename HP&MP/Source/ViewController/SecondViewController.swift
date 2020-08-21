//
//  SecondViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/14.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit

// 두번째 탭 : 신체건강 탭
class SecondViewController: UIViewController {

    // 각 View 이름 설정
    @IBOutlet var mainView: UIView!
    @IBOutlet var muscleView: UIView!
    @IBOutlet var gameView: UIView!
    @IBOutlet weak var aerobicView: UIView!
    @IBOutlet var stretchView: UIView!
    @IBOutlet var scrollView: UIScrollView!
    
    // 배경이미지 지정 및 메인 뷰 외에 다른 뷰 숨김
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        aerobicView.isHidden = true
        stretchView.isHidden = true
        muscleView.isHidden = true
        gameView.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    
    
    // 버튼 클릭시 지정한 URL로 이동
    @IBAction func aerobicButton(_ sender: UIButton) {
   guard let url = URL(string: "https://youtu.be/lKwZ2DU4P-A"), UIApplication.shared.canOpenURL(url) else { return }
           UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func yogaButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/1W9gMxLoW6Q"), UIApplication.shared.canOpenURL(url) else { return }
               UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func muscleButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/Iaa8YNDRbhg"), UIApplication.shared.canOpenURL(url) else { return };        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func boxingButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/8YR-B7FL43E"), UIApplication.shared.canOpenURL(url) else { return }
              UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func takwondoButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/qdOhSEnypVc"), UIApplication.shared.canOpenURL(url) else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func vallyButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/EFadnuaH-Jg"), UIApplication.shared.canOpenURL(url) else { return }
              UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func stretchButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/1m6SZ4ksbBY"), UIApplication.shared.canOpenURL(url) else { return }
               UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
    
    // 주제별 모음 구현: 선택한 키워드에 해당하는 뷰말고 다른 뷰 모두 숨김
    @IBAction func chooseAerobic(_ sender: UIButton) {
        aerobicView.isHidden = false
        stretchView.isHidden = true
        muscleView.isHidden = true
        gameView.isHidden = true
        scrollView.isHidden = true
        mainView.isHidden = true
    }

    
    
    @IBAction func chooseStretch(_ sender: UIButton) {
        aerobicView.isHidden = true
        stretchView.isHidden = false
        muscleView.isHidden = true
        gameView.isHidden = true
        scrollView.isHidden = true
        mainView.isHidden = true
    }

    
    @IBAction func chooseMuscle(_ sender: UIButton) {        aerobicView.isHidden = true
        stretchView.isHidden = true
        muscleView.isHidden = false
        gameView.isHidden = true
        scrollView.isHidden = true
        mainView.isHidden = true
    }

    
    
    
    @IBAction func chooseGame(_ sender: UIButton) {
        aerobicView.isHidden = true
        stretchView.isHidden = true
        muscleView.isHidden = true
        gameView.isHidden = false
        scrollView.isHidden = true
        mainView.isHidden = true
    }
}

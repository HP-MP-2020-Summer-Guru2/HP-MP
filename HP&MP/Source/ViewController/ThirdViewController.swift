//
//  ThirdViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/15.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit

// 세번째 탭 : 정신건강 탭
class ThirdViewController: UIViewController {

    @IBOutlet var mainView: UIView! //메인 뷰(첫화면)
    @IBOutlet var sleepView: UIView! // 수면 뷰 (각 키워드에 해당 하는 뷰 아울렛으로 선언)
    @IBOutlet var scrollView: UIScrollView! // 스크롤 뷰
    @IBOutlet var timeView: UIView! // 새벽시간 뷰
    @IBOutlet var restView: UIView! // 명상 뷰
    @IBOutlet var asmrView: UIView! // ASMR 뷰
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!) // 배경이미지 지정
        sleepView.isHidden = true // 뷰가 로드되었을때는 메인 뷰만 보이도록 다른 뷰 숨김
        asmrView.isHidden = true
        restView.isHidden = true
        timeView.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sleepButton(_ sender: UIButton) { // 버튼 클릭시 지정한 URL로 이동
        guard let url = URL(string: "https://youtu.be/sXLCkQnn1vc"), UIApplication.shared.canOpenURL(url) else { return }
         UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    
    @IBAction func restButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/dZewQEbQQM0"), UIApplication.shared.canOpenURL(url) else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    @IBAction func songButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/gbW1QFScQmE"), UIApplication.shared.canOpenURL(url) else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    @IBAction func asmrButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/qg9Ek28fwHk"), UIApplication.shared.canOpenURL(url) else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    @IBAction func yogaButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/Yi_toDN2cSM"), UIApplication.shared.canOpenURL(url) else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    @IBAction func selfesteemButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/6A-XJ4UgJjg"), UIApplication.shared.canOpenURL(url) else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    @IBAction func chooseSleep(_ sender: UIButton) { // 주제별 모음 구현: 선택한 키워드에 해당하는 뷰말고 다른 뷰 모두 숨김
        sleepView.isHidden = false
        scrollView.isHidden = true
        timeView.isHidden = true
        restView.isHidden = true
        asmrView.isHidden = true
        mainView.isHidden = true
    }
    @IBAction func chooseASMR(_ sender: UIButton) {
        sleepView.isHidden = true
        scrollView.isHidden = true
        timeView.isHidden = true
        restView.isHidden = true
        asmrView.isHidden = false
        mainView.isHidden = true
    }
    
    @IBAction func chooseRest(_ sender: UIButton) {
        sleepView.isHidden = true
        scrollView.isHidden = true
        timeView.isHidden = true
        restView.isHidden = false
        asmrView.isHidden = true
        mainView.isHidden = true
    }
    @IBAction func chooseTime(_ sender: UIButton) {
        sleepView.isHidden = true
        scrollView.isHidden = true
        timeView.isHidden = false
        restView.isHidden = true
        asmrView.isHidden = true
        mainView.isHidden = true
    }
}

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


//
//  SecondViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/14.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet var mainView: UIView!
    @IBOutlet var muscleView: UIView!
    @IBOutlet var gameView: UIView!
    @IBOutlet weak var aerobicView: UIView!
    @IBOutlet var stretchView: UIView!
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        aerobicView.isHidden = true
        stretchView.isHidden = true
        muscleView.isHidden = true
        gameView.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func aerobicButton(_ sender: UIButton) {
   guard let url = URL(string: "https://youtu.be/lKwZ2DU4P-A"), UIApplication.shared.canOpenURL(url) else { return }
           UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
   
    @IBAction func yogaButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/1W9gMxLoW6Q"), UIApplication.shared.canOpenURL(url) else { return }
               UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func muscleButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/Iaa8YNDRbhg"), UIApplication.shared.canOpenURL(url) else { return }
               UIApplication.shared.open(url, options: [:], completionHandler: nil)
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
    
    
    
    @IBAction func chooseMuscle(_ sender: UIButton) {
        aerobicView.isHidden = true
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

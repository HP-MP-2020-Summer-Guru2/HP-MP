//
//  ThirdViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/15.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet var sleepView: UIView!
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        sleepView.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sleepButton(_ sender: UIButton) {
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
    @IBAction func chooseSleep(_ sender: UIButton) {
        sleepView.isHidden = false
        mainView.isHidden = true
        scrollView.isHidden = true
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


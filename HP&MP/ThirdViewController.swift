//
//  ThirdViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/15.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sleepButton(_ sender: UIButton) {
        guard let url = URL(string: "https://youtu.be/sXLCkQnn1vc"), UIApplication.shared.canOpenURL(url) else { return }
         UIApplication.shared.open(url, options: [:], completionHandler: nil)
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


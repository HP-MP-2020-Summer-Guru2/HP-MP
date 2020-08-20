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
        if let url = URL(string: "https://www.youtube.com/results?search_query=수면") {
                   UIApplication.shared.open(url, options: [:])
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

}

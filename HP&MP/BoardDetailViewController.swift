//
//  BoardDetailViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/18.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit

class BoardDetailViewController: UIViewController{
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var recommendLabel: UILabel!
    @IBOutlet weak var textLabel: UITextView!
    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 살려줘

    }
    
    // 추천 버튼
    @IBAction func recommend(_ sender: Any) {
              
          }
    // 수정 버튼
       @IBAction func modify(_ sender: Any) {
                 
             }
    // 삭제 버튼
       @IBAction func del(_ sender: Any) {
                 
             }
    
    
}

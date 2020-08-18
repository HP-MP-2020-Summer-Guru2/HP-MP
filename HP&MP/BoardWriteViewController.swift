//
//  BoardWriteViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/18.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit

class BoardWriteViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    @IBOutlet weak var writeView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // 이전 버튼
    @IBAction func previous(_ sender: Any) {
           dismiss(animated: true, completion: nil)
       }
    
    // 등록 버튼
    @IBAction func write(_ sender: Any) {
              dismiss(animated: true, completion: nil)
          }
}

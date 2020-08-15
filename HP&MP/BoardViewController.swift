//
//  BoardViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/15.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit
import Firebase

class BoardViewController: UIViewController {
    
    let db = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // ovserceSingleEvnet : 서버로부터 데이터를 한 번 읽을 때 사용
        db.child("First").observeSingleEvent(of: .value) { snapshot in
            print("--> \(snapshot)")
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

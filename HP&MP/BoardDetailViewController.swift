//
//  BoardDetailViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/18.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit
import Firebase

class BoardDetailViewController: UIViewController{
    
    // 파이어베이스 서버 연결
    let db = Database.database().reference()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var recommendLabel: UILabel!
    @IBOutlet weak var textLabel: UITextView!
    
    
    var content: String?
    var id: String?
    var num: Int?
    var pw: String?
    var time: String?
    var title_: String?
    var recommend : Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 서버에서 가져온 내용을 보여줌
        titleLabel.text = title_
        nicknameLabel.text = id
        timeLabel.text = time
        recommendLabel.text = String(recommend!)
        textLabel.text = content

    }
    
  
    
    // 추천 버튼
    @IBAction func recommend(_ sender: Any) {
        
        db.child("board").child(String(self.num!)).child("recommend").observeSingleEvent(of: .value) { snapshot in
            // 서버에서 추천수를 가져옴
              var reco = snapshot.value as! Int
            reco += 1
            // 추천수를 1 증가시킨 뒤 다시 서버에 저장함
            self.db.child("board").child(String(self.num!)).child("recommend").setValue(reco)
            
            
        }
        
    }

    
}

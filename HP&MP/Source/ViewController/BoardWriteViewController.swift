//
//  BoardWriteViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/18.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit
import Firebase

// 글 작성 뷰
class BoardWriteViewController: UIViewController {

    // 파이어베이스 데이터 연결
    let db = Database.database().reference()
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var writeView: UITextView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    // 이전 버튼 액션
    @IBAction func previous(_ sender: Any) {
           dismiss(animated: true, completion: nil)
       }
    
    // 등록 버튼 액션
    @IBAction func write(_ sender: Any) {
        // 현재 시간 가져오기
       let now = Date()
        let date = DateFormatter()
        date.locale = Locale(identifier: "ko_kr")
        date.timeZone = TimeZone(abbreviation: "KST")
        date.dateFormat = "MM-dd HH:mm"

        let time = date.string(from: now)
        
        // 데이터베이스 접속
        db.child("number").observeSingleEvent(of: .value) { snapshot in
                 var num = snapshot.value as! Int // 게시물 번호 가져오기
                
            // 게시글 내용을 Bulletin 구조체에 저장
            let bulletin = Bulletin(content: self.writeView.text, id: self.idField.text!, num : num, recommend: 0, time: time, title: self.titleField.text!)
                                      
            // 저장된 Bulletin을 서버에 저장
              self.db.child("board").child(String(num)).setValue(bulletin.toDictionary)
                    num += 1

                
            // 서버에 저장된 게시물 번호를 1 증가
                self.db.child("number").setValue(num)
                   print("!!!!!!!\(num)")

        }

       
        dismiss(animated: true, completion: nil)
    }
    
        
}

// 게시글 정보를 저장하는 Bulletin 구조체
struct Bulletin: Codable {
    let content: String
    let id: String
    let num : Int
    let recommend : Int
    let time: String
    let title: String
    
    // 파이어베이스에는 딕셔너리 형태로 넣어야 하므로 딕셔너리로 전환
    var toDictionary: [String: Any] {
        let dict: [String: Any] = ["content" : content, "id": id, "num" : num, "recommend": recommend, "time" : time, "title" : title]
        return dict
    }
    
    static var id: Int = 0
}

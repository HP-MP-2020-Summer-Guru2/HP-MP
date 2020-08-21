//
//  BoardWriteViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/18.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit
import Firebase

class BoardWriteViewController: UIViewController {

    let db = Database.database().reference()
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var idField: UITextField!
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
       let now = Date()

        let date = DateFormatter()
        date.locale = Locale(identifier: "ko_kr")
        date.timeZone = TimeZone(abbreviation: "KST")
        date.dateFormat = "MM-dd HH:mm"

        let time = date.string(from: now)
        
        db.child("number").observeSingleEvent(of: .value) { snapshot in
                 var num = snapshot.value as! Int
            
            let bulletin = Bulletin(content: self.writeView.text, id: self.idField.text!, num : num, recommend: 0, time: time, title: self.titleField.text!)
                                  

                  self.db.child("board").child(String(num)).setValue(bulletin.toDictionary)
                        num += 1

            

                self.db.child("number").setValue(num)
                   print("!!!!!!!\(num)")


        }

       
        dismiss(animated: true, completion: nil)
    }
    
        
}

struct Bulletin: Codable {
    let content: String
    let id: String
    let num : Int
    let recommend : Int
    let time: String
    let title: String
    
    
    var toDictionary: [String: Any] {
        let dict: [String: Any] = ["content" : content, "id": id, "num" : num, "recommend": recommend, "time" : time, "title" : title]
        return dict
    }
    
    static var id: Int = 0
}

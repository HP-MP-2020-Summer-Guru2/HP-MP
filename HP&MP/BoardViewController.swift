//
//  BoardViewController.swift
//  HP&MP
//
//  Created by 박예빈 on 2020/08/15.
//  Copyright © 2020 GURU2. All rights reserved.
//

import UIKit
import Firebase


class BoardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let db = Database.database().reference()
    var bulletineArr: [Bulletin] = []
    var clikcedCell = 0
    
    @IBOutlet weak var tableView: UITableView!
    
    // 화면이 메모리에 로드되기 전에 수행되어야 할 작업
    override func viewDidLoad() {
        super.viewDidLoad()
       fetchBulletin()

    }
    
    override func viewWillAppear(_ animated: Bool) {
         fetchBulletin()
        tableView.reloadData()
    }
    
    
    // UITableViewDataSource : 몇 개 보여줄지? 무엇을 보여줄지?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bulletineArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        
        print("-!->\(bulletineArr)")
        
        cell.titleLabel.text = self.bulletineArr[indexPath.row].title
        cell.recommendLabel.text = String(self.bulletineArr[indexPath.row].recommend)
        cell.nicknameLabel.text = self.bulletineArr[indexPath.row].id
        cell.timeLabel.text = self.bulletineArr[indexPath.row].time
                     
        
        print("\(String(describing: cell.nicknameLabel.text))")
        
        return cell
    }
    
    
    
    // UITableViewDelegate : 셀 클릭 시 동작 설정
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        clikcedCell = indexPath.row
        print("--> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
    
    
    
    // 글쓰기 버튼
    @IBAction func write(_ sender: Any) {
        performSegue(withIdentifier: "showWrite", sender: (Any).self)
    }
    
    
    
    // 서버로부터 데이터 로드
    func fetchBulletin() {
        // ovserceSingleEvnet : 서버로부터 데이터를 한 번 읽을 때 사용
         print("-!!->\(self.bulletineArr)")
                db.child("board").observeSingleEvent(of: .value) { snapshot in
                    print("--> \(snapshot.value)")
                    do {
                       let data = try JSONSerialization.data(withJSONObject: snapshot.value, options: [])
                       let decoder = JSONDecoder()
                       let bulletines: [Bulletin] = try decoder.decode([Bulletin].self, from: data)
                       self.bulletineArr = bulletines
                        self.tableView.reloadData()

                        print("-!!->\(self.bulletineArr)")
                    } catch let error {
                       print("---> error: \(error.localizedDescription)")
                    }
                    
                }
                
                 print("-!!->\(self.bulletineArr)")
        
    }

    
    // 세그웨이 실행 직전 호출되는 함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // DetailViewController에게 데이터 넘겨줌
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? BoardDetailViewController;
            
            if let index = sender as? Int {
                   
                vc?.content = bulletineArr[clikcedCell].content
                   vc?.id = bulletineArr[clikcedCell].id
                   vc?.time = bulletineArr[clikcedCell].time
                   vc?.title_ = bulletineArr[clikcedCell].title
                   vc?.recommend = bulletineArr[clikcedCell].recommend
                vc?.num = bulletineArr[clikcedCell].num
                   }
            
       
            
            
            }
        }
    }


class ListCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var recommentImgView: UIImageView!
    @IBOutlet weak var recommendLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
}



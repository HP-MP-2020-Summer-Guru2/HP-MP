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
    
    let titleList = ["근력 운동 식단", "다이어트 식단", "단백질 위주 식단", "삼시세끼 식단", "낮은 열량 식단"]
    let recommendList = ["10", "15", "34", "1", "24"]
    let nicknameList = ["몽글이", "자몽이", "별이", "콩이", "정크랫"]
    let timeList = ["10:48", "3:48", "2:22", "8:00", "7:54"]
    
    
    // 화면이 메모리에 로드되기 전에 수행되어야 할 작업
    override func viewDidLoad() {
        super.viewDidLoad()
        // ovserceSingleEvnet : 서버로부터 데이터를 한 번 읽을 때 사용
        db.child("First").observeSingleEvent(of: .value) { snapshot in
            print("--> \(snapshot)")
        }
    
    }
    
    
    // UITableViewDataSource : 몇 개 보여줄지?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }

        cell.titleLabel.text = titleList[indexPath.row]
        cell.recommendLabel.text = recommendList[indexPath.row]
        cell.nicknameLabel.text = nicknameList[indexPath.row]
        cell.timeLabel.text = timeList[indexPath.row]
        
        print("\(String(describing: cell.nicknameLabel.text))")
        
        return cell
    }
    
    // UITableViewDelegate : 셀 클릭 시 동작 설정
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
    
    
    
    // 글쓰기 버튼
    @IBAction func write(_ sender: Any) {
        performSegue(withIdentifier: "showWrite", sender: (Any).self)
    }
    
    // Best, New Control
    @IBAction func segment(_ sender: Any) {
        
    }

}

class ListCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var recommentImgView: UIImageView!
    @IBOutlet weak var recommendLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
}



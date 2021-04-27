//
//  MemoReadVC.swift
//  MyMemory
//
//  Created by 민성홍 on 2021/04/26.
//

import UIKit

class MemoReadVC: UIViewController {

    var param : MemoData?
    @IBOutlet weak var subjects: UILabel!
    @IBOutlet weak var contents: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. 제목과 내용, 이미지를 출력
        self.subjects.text = param?.title
        self.contents.text = param?.contents
        self.img.image = param?.image
        
        // 2. 날짜 포맷 변환
        let formatter = DateFormatter()
        formatter.dateFormat = "dd일 HH:mm분에 작성됨"
        let dateString = formatter.string(from: (param?.regdate)!)
        
        // 3. 내비게이션 타이틀에 날짜를 표시
        self.navigationItem.title = dateString
    }
    
}

//
//  ThirdViewController.swift
//  Chapter03-TabBar
//
//  Created by 민성홍 on 2021/04/28.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        // 2
        title.text = "세 번째 탭"
        title.textColor = UIColor.red // 색 빨간색
        title.textAlignment = .center // 레이블 내에서 중앙 정렬로
        title.font = UIFont.boldSystemFont(ofSize: 14) // 폰트는 System Font, 14pt
        // 3
        title.sizeToFit() // 컨텐츠의 내용에 맞게 레이블 크기 변경
        // 4
        title.center.x = self.view.frame.width / 2 // x 축의 중앙에 오도록
        // 5
        self.view.addSubview(title)
        
        
    }
}

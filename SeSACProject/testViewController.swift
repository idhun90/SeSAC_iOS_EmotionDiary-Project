//
//  testViewController.swift
//  SeSACProject
//
//  Created by 이도헌 on 2022/07/12.
//

import UIKit

// 해당 뷰컨트롤러에서만 사용하는 게 아니라 일반적으로 클래스 외부에 설정한다
enum MusicType: Int {
    case all = 0
    case korea = 1
    case others = 2
}

class testViewController: UIViewController {
    
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControlValueChanged(segment)
        
        
    }
    
    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        
        if segment.selectedSegmentIndex == MusicType.all.rawValue {
            
        } else if segment.selectedSegmentIndex == MusicType.korea.rawValue {
            
        }
        
        
        
        
        
        
        if segment.selectedSegmentIndex == 0 {
            resultLabel.text = "첫 번째 세그먼트 선택"
        } else if segment.selectedSegmentIndex == 1 {
            resultLabel.text = "두 번째 세그먼트 선택"
        } else if segment.selectedSegmentIndex == 2 {
            resultLabel.text = "세 번째 세그먼트 선택"
        } else {
            resultLabel.text = "오류"
        }
    }
}

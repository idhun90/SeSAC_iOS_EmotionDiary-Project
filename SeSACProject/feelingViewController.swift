//
//  feelingViewController.swift
//  SeSACProject
//
//  Created by 이도헌 on 2022/07/11.
//

import UIKit

class feelingViewController: UIViewController {

    
    
    @IBOutlet weak var happyButton: UIButton!
    @IBOutlet weak var happyLabel: UILabel!
    
    @IBOutlet weak var loveButton: UIButton!
    @IBOutlet weak var loveLabel: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeLabel: UILabel!
    
    @IBOutlet weak var panicButton: UIButton!
    @IBOutlet weak var panicLabel: UILabel!
    
    @IBOutlet weak var sadButton: UIButton!
    @IBOutlet weak var sadLabel: UILabel!
    
    @IBOutlet weak var feelingDownButton: UIButton!
    @IBOutlet weak var fellingDownLabel: UILabel!
    
    @IBOutlet weak var boreButton: UIButton!
    @IBOutlet weak var boreLabel: UILabel!
    
    @IBOutlet weak var sickButton: UIButton!
    @IBOutlet weak var sickLabel: UILabel!
    
    @IBOutlet weak var cryButton: UIButton!
    @IBOutlet weak var cryLabel: UILabel!
    
    
    // 버튼 클릭 수
    var happyNumber = 0 // 행복해
    var loveNumber = 0 // 사랑해
    var likeNumber = 0 // 좋아해
    var panicNumber = 0 // 당황해
    var sadNumber = 0 // 속상해
    var feelingDownNumber = 0 //우울해
    var boreNumber = 0 // 심심해
    var sickNumber = 0 // 아파해
    var cryNumber = 0 // 눈물나
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButtonTitleLabelText(happyButton, name: "happy", label: happyLabel, text: "행복해")
        setButtonTitleLabelText(loveButton, name: "love", label: loveLabel, text: "사랑해")
        setButtonTitleLabelText(likeButton, name: "like", label: likeLabel, text: "좋아해")
        setButtonTitleLabelText(panicButton, name: "panic", label: panicLabel, text: "당황해")
        setButtonTitleLabelText(sadButton, name: "sad", label: sadLabel, text: "속상해")
        setButtonTitleLabelText(feelingDownButton, name: "feelingDown", label: fellingDownLabel, text: "우울해")
        setButtonTitleLabelText(boreButton, name: "bore", label: boreLabel, text: "심심해")
        setButtonTitleLabelText(sickButton, name: "sick", label: sickLabel, text: "아파해")
        setButtonTitleLabelText(cryButton, name: "cry", label: cryLabel, text: "눈물나")
        
    }
 
    // 버튼 타이틀 설정
    func setButtonTitleLabelText(_ button: UIButton, name: String, label: UILabel, text: String) {
        button.setTitle(name, for: .normal)
        label.text = text
        button.tintColor = .clear
        
    }
    
    
    // 클릭한 버튼 타이틀 체크 후, 클릭 횟수 증가 및 레이블 출력 메소드
    @IBAction func clickedButton(_ sender: UIButton) {
        
        // 클릭한 버튼 타이틀 옵셔널 바인딩 및 확인
        guard let buttonName = sender.currentTitle else { return }
        print("현재 클릭된 버튼 이름: \(buttonName)")
        
        // 클릭한 버튼의 넘버수 증가 및 레이블 출력
        switch buttonName {
        case "happy":
            happyNumber += 1
            happyLabel.text = "행복해 \(happyNumber)"
        case "love":
            loveNumber += 1
            loveLabel.text = "사랑해 \(loveNumber)"
        case "like":
            likeNumber += 1
            likeLabel.text = "좋아해 \(likeNumber)"
        case "panic":
            panicNumber += 1
            panicLabel.text = "당황해 \(panicNumber)"
        case "sad":
            sadNumber += 1
            sadLabel.text = "속상해 \(sadNumber)"
        case "feelingDown":
            feelingDownNumber += 1
            fellingDownLabel.text = "우울해 \(feelingDownNumber)"
        case "bore":
            boreNumber += 1
            boreLabel.text = "심심해 \(boreNumber)"
        case "sick":
            sickNumber += 1
            sickLabel.text = "아파해 \(sickNumber)"
        case "cry":
            cryNumber += 1
            cryLabel.text = "눈물나 \(cryNumber)"
        default :
            print("영혼없음")
        }
    }
}

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
        
        setButtonTitle(happyButton, name: "happy")
        setButtonTitle(loveButton, name: "love")
        setButtonTitle(likeButton, name: "like")
        setButtonTitle(panicButton, name: "panic")
        setButtonTitle(sadButton, name: "sad")
        setButtonTitle(feelingDownButton, name: "feelingDown")
        setButtonTitle(boreButton, name: "bore")
        setButtonTitle(sickButton, name: "sick")
        setButtonTitle(cryButton, name: "cry")
    }
 
    
    func setButtonTitle(_ button: UIButton, name: String) {
        button.setTitle(name, for: .normal)
    }
    
    @IBAction func clickedButton(_ sender: UIButton) {
        
    }
    
}

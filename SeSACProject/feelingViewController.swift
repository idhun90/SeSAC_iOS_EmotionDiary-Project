enum ClickedCount: String {
    case Count
}

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
    
    @IBOutlet var labelCollection: [UILabel]!
    
    @IBOutlet weak var alertButton: UIButton!
    
    // 수업용
    //    @IBOutlet weak var nickName: UILabel!
    
    // tag용 배열 생성
    var emotionCount = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    
    // label.text 리스트 생성
    let labelNameList = ["행복해", "사랑해", "좋아해", "당황해", "속상해", "우울해", "심심해", "아파해", "눈물나"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertButton.setTitle("횟수 초기화", for: .normal)
        initLabelText()
        
        if UserDefaults.standard.array(forKey: ClickedCount.Count.rawValue) != nil {
            // 저장한 카운트 배열값 가져와서 emotionCount에 할당
            emotionCount = UserDefaults.standard.array(forKey: ClickedCount.Count.rawValue) as! [Int] // [Any] -> [Int] 타입 변환
            
            // 저장한 카운트 값 레이블에 할당
            for i in 0...emotionCount.count-1 {
                labelCollection[i].text = "\(labelNameList[i]) \(emotionCount[i] == 0 ? " " : "\(emotionCount[i])")"
            }
            
        } else {
            print("nil")
        }
                
        }
        
        // 수업 강의 내용
        // nickName.text = setUserNickname() // 이렇게 사용하기 위해 반환을 사용한다.
        // view.backgroundColor = example().0
        // cryButton.setImage(UIImage(named: example().2), for: .normal)
        
    
    func initLabelText() {
        for i in 0...labelCollection.count-1 {
            labelCollection[i].text = labelNameList[i]
        }
    }
    
    // 클릭한 버튼 타이틀 체크 후, 클릭 횟수 증가 및 레이블 출력 메소드
    @IBAction func clickedButton(_ sender: UIButton) {
        
        // tag 사용
        emotionCount[sender.tag] += 1
        
        for i in 0...labelCollection.count-1 {
            labelCollection[i].text = "\(labelNameList[i]) \(emotionCount[i] == 0 ? " " : "\(emotionCount[i])")"
        }
        
        // 값 저장
        UserDefaults.standard.set(emotionCount, forKey: ClickedCount.Count.rawValue)
        print(emotionCount)
    }
    
    // 알림창 구현
    @IBAction func showAlert(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "초기화", message: "클릭 횟수를 초기화하시겠습니까?", preferredStyle: .alert)
        let reset = UIAlertAction(title: "초기화", style: .destructive) { _ in
         
            self.emotionCount = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 카운트 초기화
//          UserDefaults.standard.removeObject(forKey: ClickedCount.Count.rawValue) // 해당 구문으로 작성 시 nil 반환
            UserDefaults.standard.set(self.emotionCount, forKey: ClickedCount.Count.rawValue) // 값 저장
//
            if UserDefaults.standard.array(forKey: ClickedCount.Count.rawValue) != nil {
                self.emotionCount = UserDefaults.standard.array(forKey: ClickedCount.Count.rawValue) as! [Int]

                for i in 0...self.emotionCount.count-1 {
                    self.labelCollection[i].text = "\(self.labelNameList[i]) \(self.emotionCount[i] == 0 ? " " : "\(self.emotionCount[i])")"
                }

            } else {
                print("nil입니다.")
            }

        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(reset)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
    // 수업용
    // showAlertController()
    
    
    // 수업용
    //    func showAlertController() {
    //
    //        // 1. 흰 바탕: UIAlertController
    //        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet) // 옵셔널이라 써도되고 안 써도 된다는 의미
    //        // 액션시트일 떄 타이틀은 보통 쓰지 않기 때문에 title, message은 nil처리로 한다.
    //        // 2. 버튼
    //        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil) // handler:아울렛 메서드의 기능들이라고 이해하면 된다.
    //        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
    //        let web = UIAlertAction(title: "새창으로열기", style: .default, handler: nil)
    //        let share = UIAlertAction(title: "공유", style: .default, handler: nil)
    //
    //        // 3. 1+2
    //        alert.addAction(web)
    //        alert.addAction(share)
    //        alert.addAction(ok)
    //        alert.addAction(cancel)
    //
    //        // 4. 사용자에게 띄워주기
    //        present(alert, animated: true, completion: nil) // completion: 떴을 때 뭐 해줄까요?
    //
    //        // 취소버튼은 항상 맨 아래 또는 왼쪽에 위치한다.
    //    }
    //
    //    func setUserNickname() -> String {
    //        let nicname = ["고래밥", "칙촉", "격투가"]
    //        let select = nicname.randomElement()!
    //
    //        return "저는 \(select)입니다."
    //    }
    //
    //    // 배경색, 레이블, 이미지 하나 전달
    //    func example() -> (UIColor, String, String) {
    //
    //        let color: [UIColor] = [.yellow, .red, .blue]
    //        let image: [String] = ["sesac_slime6", "sesac_slime7", "sesac_slime2", "sesac_slime5"]
    //
    //        return (color.randomElement()!, "고래밥", image.randomElement()!)
    //
    //    }
}

// 태그 코드로 사용 방법
/*
 button.tag = 0
 
 // 배열 인덱스 생성
 var memotionArray = [0,0,0,0,0,0]
 
 @IBaction func ~~~
 
 emotionArray[sender.tag] += 1
 
 if sender.tag == 0 {
 emotionArray[0]
 
 if sen
 
 */

// 애플 심볼 이미지 사용 방법
//let systemImage = UIImage(systemName: <#T##String#>)

//#imageLiteral(
//#colorLitera(


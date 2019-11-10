import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var cardBoarder: UIImageView!
    
    @IBOutlet weak var suitChanger: UISegmentedControl!
    @IBOutlet weak var valueChanger: UIStepper!
    
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    var suit: Suit = .heart
    var card: String = "A"


    var currentSegmentIndex: Int = 0 {
        didSet {
            switch suitChanger.selectedSegmentIndex {
            case 0:
                suit = .diamond
            case 1:
                suit = .heart
            case 2:
                suit = .club
            case 3:
                suit = .spade
            default:
               print("")
            }

        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configuresStepper()
        leftLabel.text = "\(card)\(suit.rawValue)"
        middleLabel.text = "\(card)\(suit.rawValue)"
        rightLabel.text = "\(card)\(suit.rawValue)"
        
    }
    
    func configuresStepper() {
        valueChanger.minimumValue = 1
        valueChanger.maximumValue = 13
        valueChanger.stepValue = 1
        
        //default start value
        valueChanger.value = 1
    }
    
  // ✅ WORKS AS DESIRED
    @IBAction func segmentedControlChange(_ sender: UISegmentedControl) {
        
       currentSegmentIndex = sender.selectedSegmentIndex // valid values 0, 1, 2, 3 -> just gets the segment value
        
        leftLabel.text = "\(card)\(suit.rawValue)"
        middleLabel.text = "\(card)\(suit.rawValue)"
        rightLabel.text = "\(card)\(suit.rawValue)" 
    }
    
    
    @IBAction func valueChanged(_ sender: UIStepper) {
        
        let cardNum = sender.value
        let cardNumAsInt = Int(cardNum)
        
        switch cardNumAsInt {
        case 1:
            card = "A"
        case 2...10:
            card = cardNumAsInt.description
        case 11:
            card = "J"
        case 12:
            card = "Q"
        case 13:
            card = "K"
        default:
            print("")
        }
        
        
        leftLabel.text = "\(card)\(suit.rawValue)"
        middleLabel.text = "\(card)\(suit.rawValue)"
        rightLabel.text = "\(card)\(suit.rawValue)"
    }
    
    
    
}



import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var cardBoarder: UIImageView!
    
    @IBOutlet weak var suitChanger: UISegmentedControl!
    @IBOutlet weak var valueChanger: UIStepper!
    
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    
    var suit: Suit = .heart
    

    override func viewDidLoad() {
        super.viewDidLoad()
        leftLabel.text = "♦️"
    }
    
    func configuresStepper() {
        valueChanger.minimumValue = 1
        valueChanger.maximumValue = 13
        valueChanger.stepValue = 1
        
        //default start value
        valueChanger.value = 1
    }
    
    
    @IBAction func segmentedControlChange(_ sender: UISegmentedControl) {
        
        // currentSegmentIndex = sender.selectedSegmentIndex // valid values 0, 1, 2, 3 -> just gets the segment value
        
        switch sender.selectedSegmentIndex {
        case 0:
            suit = .diamond
            //leftLabel.text = "♦️"
        case 1:
            suit = .heart
           //leftLabel.text = "❤️"
        case 2:
            suit = .club
            //leftLabel.text = "♣️"
        case 3:
            suit = .spade
            //leftLabel.text = "♠️"
        default:
           print("")
        }
        
        leftLabel.text = "1 \(suit.rawValue)"
    }
    
    
    @IBAction func valueChanged(_ sender: UIStepper) {
        
        
    }
    
    
    
}


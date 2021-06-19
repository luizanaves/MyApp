//
//  GuessAgeViewCell.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 09/06/21.
//

import UIKit

class GuessAgeViewCell: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var wrongButton: UIButton!
    @IBOutlet weak var showAgeLabel: UILabel!
    @IBOutlet weak var prophetImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.guessAgeDarkBlue
        prophetImage.image = Images.vidente
        ageLabel.guessAgeTextLabelSecond()
        showAgeLabel.guessAgeTextLabelResult()
        rightButton.guessAgeButtonsPopUP()
        wrongButton.guessAgeButtonsPopUP()
        getAge(){ json in
            DispatchQueue.main.async {
                self.showAgeLabel.text = "\(json.age)"
            }
        }
    }
    
    @IBAction func rightButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func wrongButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
}

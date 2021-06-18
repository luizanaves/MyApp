//
//  ViewController.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 09/06/21.
//

import UIKit

public var getNameToResponse = ""

class GuessAgeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var guessAgeButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var prophetImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.guessAgeDarkBlue
        prophetImage.image = Images.vidente
        nameLabel.textAlignment = .center
        nameLabel.numberOfLines = 3
        nameLabel.text = Strings.firstTextGuessAge
        nameLabel.textColor = Colors.guessAgeLightBlue
        nameLabel.font = UIFont(name: Fonts.fontHerculanum, size: 30)
        guessAgeButton.guessAgeButton()
    }
    
    @IBAction func clickGuessAgeButton(_ sender: Any) {
        let getText: String = nameTextField.text!
        getNameToResponse = getText
    }
}


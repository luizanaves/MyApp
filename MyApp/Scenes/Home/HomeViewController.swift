//
//  HomeViewController.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 10/06/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var hackOnePersonButton: UIButton!
    @IBOutlet weak var GuessAgeButton: UIButton!
    @IBOutlet weak var ShowDogButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.home
        hackOnePersonButton.setImage(Images.hacker, for: .normal)
        GuessAgeButton.setImage(Images.vidente, for: .normal)
        ShowDogButton.setImage(Images.dog, for: .normal)
        navigationController?.navigationBar.tintColor = Colors.white
    }
    
    @IBAction func goToHackOnePerson(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

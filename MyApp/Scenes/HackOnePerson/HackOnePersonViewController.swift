//
//  HackOnePersonViewController.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 09/06/21.
//

import UIKit

class HackOnePersonViewController: UIViewController {
    
    @IBOutlet weak var hackearButton: UIButton!
    @IBOutlet weak var hackFirstLabel: UILabel!
    @IBOutlet weak var hackerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.hackBlack
        hackerImage.image = Images.hacker
        hackearButton.hackButton()
        hackearButton.contentHorizontalAlignment = .center
        hackearButton.setTitle(Strings.hackear, for: .normal)
        hackFirstLabel.numberOfLines = 1
        hackFirstLabel.textAlignment = .center
        hackFirstLabel.textColor = Colors.hackGreen
        hackFirstLabel.text = Strings.firstTextHackOnePerson
        hackFirstLabel.font = UIFont(name: "Courier New", size: 25)
        
    }
}

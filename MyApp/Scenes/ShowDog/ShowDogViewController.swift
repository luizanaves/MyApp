//
//  ShowDogController.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 09/06/21.
//

import UIKit

class ShowDogViewController: UIViewController {
    
    @IBOutlet weak var showDogButton: UIButton!
    @IBOutlet weak var showDogFirstLabel: UILabel!
    @IBOutlet weak var imageDogs: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.showDogOrange
        imageDogs.image = Images.showDog
        showDogFirstLabel.numberOfLines = 3
        showDogFirstLabel.textAlignment = .center
        showDogFirstLabel.text = Strings.firstTextShowDog
        showDogFirstLabel.textColor = Colors.showDogPink
        showDogFirstLabel.font = UIFont(name: Fonts.phosphane, size: 30)
        showDogButton.setTitle(Strings.descubra, for: .normal)
        showDogButton.showDogButton()
    }
}

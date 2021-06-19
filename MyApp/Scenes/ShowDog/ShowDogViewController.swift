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
        showDogFirstLabel.showDogTextLabelFirst()
        showDogButton.setTitle(Strings.descubra, for: .normal)
        showDogButton.showDogButton()
    }
}

//
//  ShowDogViewCell.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 09/06/21.
//

import UIKit

class ShowDogViewCell: UIViewController {
    
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var adoreiButton: UIButton!
    @IBOutlet weak var showDogSecondLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.showDogOrange
        showDogSecondLabel.showDogTextLabelSecond()
        adoreiButton.showDogButton()
        adoreiButton.setTitle(Strings.adorei, for: .normal)
        getShowDog() { (json) in
            DispatchQueue.main.async {
                self.dogImage.downloaded(from: json.message)
            }
        }
    }
    
    @IBAction func closeShowDogButton(_ sender: Any) {
        dismiss(animated: true)
    }
}


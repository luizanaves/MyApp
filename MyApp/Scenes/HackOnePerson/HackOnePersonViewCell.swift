//
//  HackOnePersonViewCell.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 09/06/21.
//

import UIKit

class HackOnePersonViewCell: UIViewController {
    
    @IBOutlet weak var resultLabelHack: UILabel!
    @IBOutlet weak var fecharButton: UIButton!
    @IBOutlet weak var hackImage: UIImageView!
    @IBOutlet weak var hackSecondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.hackBlack
        hackSecondLabel.numberOfLines = 1
        hackSecondLabel.textAlignment = .center
        hackSecondLabel.textColor = Colors.hackGreen
        hackSecondLabel.text = Strings.secondTextHackOnePerson
        hackSecondLabel.font = UIFont(name: "Courier New", size: 25)
        resultLabelHack.numberOfLines = 10
        resultLabelHack.textAlignment = .left
        resultLabelHack.textColor = Colors.hackGreen
        resultLabelHack.font = UIFont(name: "Courier New", size: 17)
        fecharButton.hackButton()
        fecharButton.contentHorizontalAlignment = .center
        fecharButton.setTitle(Strings.fechar, for: .normal)
        
        
        getHack() { json in
            DispatchQueue.main.async {
                self.hackImage.downloaded(from: json.results[0].picture.large)
                self.resultLabelHack.text =
                    " Nome: \(json.results[0].name.title) \(json.results[0].name.first) \(json.results[0].name.last)\n Sexo: \(json.results[0].gender)\n Idade: \(json.results[0].dob.age)\n Email: \(json.results[0].email)\n Cidade: \(json.results[0].location.city)\n Estado: \(json.results[0].location.state)\n Pais: \(json.results[0].location.country)\n"
            }
        }
    }
    
    @IBAction func closeHackButton(_ sender: Any) {
        dismiss(animated: true)
    }
}
    

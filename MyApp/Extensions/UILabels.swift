//
//  UILabels.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 18/06/21.
//

import UIKit

extension UILabel {
    
    func hackTextLabelFirst() {
        numberOfLines = 1
        textAlignment = .center
        textColor = Colors.hackGreen
        text = Strings.firstTextHackOnePerson
        font = UIFont(name: "Courier New", size: 25)
    }
    
    func hackTextLabelSecond() {
        numberOfLines = 1
        textAlignment = .center
        textColor = Colors.hackGreen
        text = Strings.secondTextHackOnePerson
        font = UIFont(name: "Courier New", size: 25)
    }
    
    func hackTextLabelResult() {
        numberOfLines = 7
        textAlignment = .left
        textColor = Colors.hackGreen
        font = UIFont(name: "Courier New", size: 17)
    }
    
    func guessAgeTextLabelFirst() {
        textAlignment = .center
        numberOfLines = 3
        text = Strings.firstTextGuessAge
        textColor = Colors.guessAgeLightBlue
        font = UIFont(name: Fonts.fontHerculanum, size: 30)
    }
    
    func guessAgeTextLabelSecond() {
        numberOfLines = 1
        text = Strings.secondTextGuessAge
        textColor = Colors.guessAgeLightBlue
        font = UIFont(name: Fonts.fontHerculanum, size: 30)
    }
    
    func guessAgeTextLabelResult() {
        numberOfLines = 1
        textAlignment = .center
        textColor = Colors.guessAgeLightBlue
        font = UIFont(name: Fonts.fontHerculanum, size: 50)
    }
    
    func showDogTextLabelFirst() {
        numberOfLines = 3
        textAlignment = .center
        text = Strings.firstTextShowDog
        textColor = Colors.showDogPink
        font = UIFont(name: Fonts.phosphane, size: 30)
    }
    
    func showDogTextLabelSecond() {
        numberOfLines = 5
        textAlignment = .center
        textColor = Colors.showDogPink
        text = Strings.secondTextShowDog
        font = UIFont(name: Fonts.phosphane, size: 30)
    }
}

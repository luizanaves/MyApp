//
//  UIButtonExtensions.swift
//  MyRecipes
//
//  Created by Luiza Negreiros Naves - LNA on 10/05/21.
//

import UIKit

extension UIButton {

    func guessAgeButton(){
        backgroundColor = Colors.guessAgeLightBlue
        layer.cornerRadius = frame.height / 2 
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 2
        layer.shadowOffset = CGSize(width: 0, height: 10)
        titleLabel?.tintColor = Colors.white
        titleLabel?.font = UIFont(name: Fonts.fontHerculanum, size: 20)
    }
    
    func guessAgeButtonsPopUP() {
        backgroundColor = Colors.guessAgeLightBlue
        layer.cornerRadius = 2
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 10
        layer.shadowOffset = CGSize(width: 0, height: 10)
        titleLabel?.tintColor = Colors.white
        titleLabel?.font = UIFont(name: Fonts.fontHerculanum, size: 25)
    }
    
    func hackButton(){
        backgroundColor = Colors.hackGreen
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 10)
        titleLabel?.tintColor = Colors.hackBlack
        titleLabel?.font = UIFont(name: "Courier New" , size: 30)
        contentHorizontalAlignment = .center
    }
    
    func showDogButton(){
        backgroundColor = Colors.showDogPink
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 10)
        titleLabel?.tintColor = Colors.white
        titleLabel?.font = UIFont(name: Fonts.phosphane , size: 30)
    }
    
    func guestButton() {
        backgroundColor = Colors.white
        titleLabel?.tintColor = Colors.guessAgeDarkBlue
        setTitle(Strings.guest, for: .normal)
        titleLabel?.font = UIFont(name: "Avenir Next Bold" , size: 15)
        frame = CGRect(x: 91, y: 500, width: 230, height: 40)
        
    }
}

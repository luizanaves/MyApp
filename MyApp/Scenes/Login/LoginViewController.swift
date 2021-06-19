//
//  LoginViewController.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 19/06/21.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController  {
   
    @IBOutlet weak var googleSignInButton: GIDSignInButton!
    @IBOutlet weak var guestButton: UIButton!
    
    override func viewDidLoad() {
        GIDSignIn.sharedInstance().presentingViewController = self
        view.backgroundColor = Colors.home
        guestButton.guestButton()
    }
}

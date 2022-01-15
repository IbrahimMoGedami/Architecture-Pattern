//
//  LoginViewController.swift
//  MvvmDemoApp
//
//  Created by Codecat15 on 3/14/2020.
//  Copyright © 2020 Codecat15. All rights reserved.

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    private var loginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginViewModel.delegate = self
    }

    // MARK: - Login button tapped
    @IBAction func didTapOnLoginButton(_ sender: Any) {

        let request = LoginRequest(userEmail: userName.text, userPassword: password.text)
        loginViewModel.loginUser(loginRequest: request)
    }
    
}

//
//  ViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 10/28/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
class ViewController: UIViewController {
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("THE VALUE IS", UserDefaults.standard.bool(forKey: "user_uid_key"))

        //Listen for keyboard events
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: Selector("endEditing:")))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if UserDefaults.standard.bool(forKey: "user_uid_key") == true {
            //send user to the viewcontroller I want
            let tabVC = self.storyboard?.instantiateViewController(withIdentifier: "tabVC") as! UITabBarController
            present(tabVC, animated: true, completion: nil)
        }
    }
    fileprivate func userIsLoggedIn() -> Bool {
        return UserDefaults.standard.bool(forKey: "user_uid_key")
    }
    @IBAction func backToLogin(_segue: UIStoryboardSegue) {
        
    }
    @IBAction func registerButton(_ sender: Any) {
        performSegue(withIdentifier: "registerSegue", sender: nil)
    }
    @IBAction func loginButton(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            var disableMyButton = sender as? UIButton
            disableMyButton?.isEnabled = false
            
            self.activityIndicator.center = self.view.center
            self.activityIndicator.hidesWhenStopped = true
            self.activityIndicator.style = UIActivityIndicatorView.Style.gray
            self.view.addSubview(self.activityIndicator)
            self.activityIndicator.startAnimating()
            UIApplication.shared.beginIgnoringInteractionEvents()
            
            if let error = error {
                print(error.localizedDescription)
                
            }
            
            if user != nil {
                
                // Login success
                // Saves User UID to UserDefaults
                UserDefaults.standard.set(true, forKey: "user_key_uid")
                UserDefaults.standard.synchronize()
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabVC")
                print("THE VALUE IS NOW", UserDefaults.standard.bool(forKey: "user_key_uid"))
                self.present(vc, animated: true, completion: nil)
                self.activityIndicator.stopAnimating()
                UIApplication.shared.endIgnoringInteractionEvents()
                disableMyButton?.isEnabled = true
                
            } else {
                self.createAlert(title: "Invalid username/password", message: "Check WiFi status if user/password is correct")
                self.activityIndicator.stopAnimating()
                UIApplication.shared.endIgnoringInteractionEvents()
                disableMyButton?.isEnabled = true
            }
//            if error != nil {
//                self.createAlert(title: "Invalid username/password", message: "Check WiFi status if user/password is correct")
//            } else {
//                UserDefaults.standard.setValue(true, forKeyPath: "userIsLoggedIn")
//                UserDefaults.standard.synchronize()
//                let tabVC = self.storyboard?.instantiateViewController(withIdentifier: "tabVC") as! UITabBarController
//                self.present(tabVC, animated: true, completion: nil)
//
//            }
        }
    }
    func createAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}


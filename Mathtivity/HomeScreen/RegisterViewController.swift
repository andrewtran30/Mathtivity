//
//  RegisterViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 10/28/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
class RegisterViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailRegisterTextField: UITextField!
    
    @IBOutlet weak var passwordRegisterTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordRegisterTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: Selector("endEditing:")))
        
        profileImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleSelectProfileImageView)))
        profileImage.isUserInteractionEnabled = true
        profileImage.translatesAutoresizingMaskIntoConstraints = false 
    }
    
    
    @IBAction func registerButton(_ sender: Any) {
        guard let email = emailRegisterTextField.text, let password = passwordRegisterTextField.text, let name = confirmPasswordRegisterTextField.text else {
            print("Form is not valid")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if error != nil {
                print(error)
                self.createAlert(title: "There was an error creating your account", message: "Contact mathtivityinc@gmail.com if your error is not resolved.")
            } else {
                guard let uid = user?.user.uid else {
                    return
                }
                self.welcomeMessage()
                //successfully authenticated user
                let ref = Database.database().reference()
                let usersReference = ref.child("users").child(uid)
                let values = ["name": name, "email": email]
                usersReference.updateChildValues(values, withCompletionBlock: { (err, ref) in
                    if err != nil {
                        print("HERE IS THE ERROR:", err)
                        return
                    } else {
                        print("Saved user successfully in firebase DB")
                        self.performSegue(withIdentifier: "finishRegisterSegue", sender: nil)
                    }
                })
                
                
            }
        }
    }
    
    func welcomeMessage() {
        let ref = Database.database().reference(fromURL: "https://mathtivity-208421.firebaseio.com/").child("messages")
        let childRef = ref.childByAutoId()
        //let toId = user!.id!
        let fromId = Auth.auth().currentUser!.uid
        let timeStamp = Date.timeIntervalSinceReferenceDate
        //is it the best thing to include the name inside of the message node?
        let values = ["text": "Welcome to Mathtivity! With this app, you'll be able to learn anything ranging from advanced math, to complex AI systems. Practice material for your course can be found if you swipe left on the course page. If you need any help, feel free to ask us any questions! With that said, get learning and change the world!", "toId": fromId, "fromId": "i6iRAR0X1AY5K13pQSQGAHiCEWd2", "timestamp": timeStamp] as [String : Any]
        
        
        //        childRef.updateChildValues(values)
        
        childRef.updateChildValues(values) { (error, ref) in
            if error != nil {
                print(error)
            }
            let userMessageRef = Database.database().reference(fromURL: "https://mathtivity-208421.firebaseio.com/").child("user-messages").child("i6iRAR0X1AY5K13pQSQGAHiCEWd2").child(fromId)
            let messageId = childRef.key
            let chatLog = ChatLogController()
            chatLog.inputTextField.text = nil
            userMessageRef.updateChildValues([messageId!: 1])
            let recipientUserMessagesRef = Database.database().reference().child("user-messages").child(fromId).child("i6iRAR0X1AY5K13pQSQGAHiCEWd2")
            recipientUserMessagesRef.updateChildValues([messageId!: 1])
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

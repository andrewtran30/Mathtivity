//
//  LoginController+handlers.swift
//  Mathtivity
//
//  Created by Andrew Tran on 1/12/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//

import UIKit
import Firebase
extension RegisterViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @objc func handleSelectProfileImageView() {
     let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var selectedImageFromPicker: UIImage?
        
        if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            selectedImageFromPicker = editedImage
        } else if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            selectedImageFromPicker = originalImage
        }
        
        if let selectedImage = selectedImageFromPicker {
            profileImage.image = selectedImage
        }
       dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("canceled picker")
        dismiss(animated: true, completion: nil)
    }
//    @objc func handleRegister() {
//        guard let email = emailRegisterTextField.text, let password = passwordRegisterTextField.text, let name = confirmPasswordRegisterTextField.text else {
//            print("Form is not valid")
//            return
//        }
//        
//        
//        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
//            if error != nil {
//                print(error)
//                self.createAlert(title: "There was an error creating your account", message: "Contact mathtivityinc@gmail.com if your error is not resolved.")
//            } else {
//                guard let uid = user?.user.uid else {
//                    return
//                }
//                
//                //successfully authenticated user
//                let storageRef = Storage.storage().reference().child("profileImage.png")
//                
//                if let uploadData = self.profileImage.image!.pngData() {
//                    storageRef.putData(uploadData, metadata: nil) { (metadata, error) in
//                        if error != nil {
//                            print(error)
//                            return
//                        }
//                        if let profileImageUrl = metadata?.storageReference?.downloadURL(completion: { (url, error) in
//                            if error != nil {
//                                print(error?.localizedDescription)
//                            }
//                        }) {
//                            let values = ["name": name, "email": email, "profileImageURL": profileImageUrl] as [String : Any]
//                            self.registerUserIntoDatabaseWithUID(uid: uid, values: values as [String : AnyObject])
//                            
//                        }
//                        
//                        
//                    }
//                }
////                let ref = Database.database().reference(fromURL: "https://mathtivity-208421.firebaseio.com/")
////                let usersReference = ref.child("users").child(uid)
////                let values = ["name": name, "email": email, "profileImageURL": metadata.downloadURL()]
////                usersReference.updateChildValues(values, withCompletionBlock: { (err, ref) in
////                    if err != nil {
////                        print(err)
////                        return
////                    } else {
////                        print("Saved user successfully in firebase DB")
////                    }
////                })
//                
//                self.performSegue(withIdentifier: "finishRegisterSegue", sender: nil)
//            }
//        }
//    }
//    private func registerUserIntoDatabaseWithUID(uid: String, values: [String: AnyObject]) {
//        let ref = Database.database().reference(fromURL: "https://mathtivity-208421.firebaseio.com/")
//        let usersReference = ref.child("users").child(uid)
//
//        usersReference.updateChildValues(values, withCompletionBlock: { (err, ref) in
//            if err != nil {
//                print(err)
//                return
//            } else {
//                print("Saved user successfully in firebase DB")
//            }
//        })
//        
//        self.performSegue(withIdentifier: "finishRegisterSegue", sender: nil)
//    }
}

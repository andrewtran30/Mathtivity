//
//  SupportViewController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 1/1/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
class SupportViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellId = "cellId"
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Show", style: .plain, target: self, action: #selector(showChatController))
        
        //navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.compose, target: self, action: #selector(handleNewMessage))
        checkIfUserIsLoggedIn()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UserCell.self, forCellReuseIdentifier: cellId)
        observeUserMessages()
        
    }
    
    var messages = [Message]()
    var messagesDictionary = [String: Message]()
    
    @objc func observeUserMessages() {
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        print(uid)
        let ref = Database.database().reference().child("user-messages").child(uid)
        ref.observe(.childAdded, with: {  (snapshot) in
            let userId = snapshot.key
            Database.database().reference().child("user-messages").child(uid).child(userId).observe(.childAdded, with: { (snapshot) in
                let messageId = snapshot.key
                self.fetchMessageWithMessageId(messageId: messageId)
            }, withCancel: nil)
            
        }, withCancel: nil)
    }
    
    @objc private func fetchMessageWithMessageId(messageId: String) {
        let messagesReference = Database.database().reference().child("messages").child(messageId)
        
        messagesReference.observeSingleEvent(of: .value, with: { (snapshot) in
            print(snapshot)
            
            if let dictionary = snapshot.value as? [String: AnyObject] {
                let message = Message(dictionary: dictionary)
                
                
//                    message.text = dictionary["text"] as! String
//                    message.toId = dictionary["toId"] as? String
//                    message.fromId = dictionary["fromId"] as? String
//                    message.timestamp = dictionary["timestamp"] as? NSNumber
                
                 
//                message.setValuesForKeys(dictionary)
                //                self.messages.append(message)
                if let chatPartnerId = message.chatPartnerId() {
                    
                    self.messagesDictionary[chatPartnerId] = message
                    self.messages = Array(self.messagesDictionary.values)
                    self.messages.sort(by: { (message1, message2) -> Bool in
                        return message1.timestamp!.intValue > message2.timestamp!.intValue
                    })
                }
                self.attemptReloadOfTable()
            }
            
        }, withCancel: nil)
    }
    
    @objc private func attemptReloadOfTable() {
        self.timer?.invalidate()
        
        self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.handleReloadTable), userInfo: nil, repeats: false)
    }
    @objc func observeMessages() {
        
        Database.database().reference().child("messages").observe(.childAdded, with: { (snapshot) in
            if let dictionary = snapshot.value as? [String: AnyObject] {
                let message = Message(dictionary: dictionary)

//                message.text = dictionary["text"] as! String
//                message.toId = dictionary["toId"] as! String
//                message.fromId = dictionary["fromId"] as! String
//                message.timestamp = dictionary["timestamp"] as! NSNumber
                
                //message.setValuesForKeys(dictionary)
//                self.messages.append(message)
                if let toId = message.toId {
                    self.messagesDictionary[toId] = message
                    self.messages = Array(self.messagesDictionary.values)
                    self.messages.sort(by: { (message1, message2) -> Bool in
                        return message1.timestamp!.intValue > message2.timestamp!.intValue
                    })
                }
//                self.tableView.reloadData()
                    self.attemptReloadOfTable()
            }
        }, withCancel: nil)
    }
    
    var timer: Timer?
    
    
    @objc func handleReloadTable() {
        self.tableView.reloadData()
        self.messages = Array(self.messagesDictionary.values)
        self.messages.sort(by: { (message1, message2) -> Bool in
            return message1.timestamp!.intValue > message2.timestamp!.intValue
        })
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        remove this hack down below
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellId")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! UserCell
        let message = messages[indexPath.row]
        cell.message = message 
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //make sure to unwrap values of message!
        let message = messages[indexPath.row]
        guard let chatPartnerId = message.chatPartnerId() else {
            return
        }
        tableView.deselectRow(at: indexPath, animated: true)
        let ref = Database.database().reference().child("users").child(chatPartnerId)
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            print(snapshot)
            guard let dictionary = snapshot.value as? [String: AnyObject] else {
                return
            }
            print(dictionary["name"] as! String)
            let user = User()
            user.id = chatPartnerId
            user.email = dictionary["email"] as! String
            user.name = dictionary["name"] as! String
            self.showChatControllerForUser(user: user)
            
        }, withCancel: nil)
        
    }
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellId")
//        cell.textLabel?.text = "Some Awesome Text!"
//        return cell
//    }
    @objc func showChatControllerForUser(user: User) {
        let chatLogController = ChatLogController(collectionViewLayout: UICollectionViewFlowLayout())
        chatLogController.user = user
//        chatLogController.navigationItem.title = user.name
        present(UINavigationController(rootViewController: chatLogController), animated: true, completion: nil)
        //navigationController?.pushViewController(chatLogController, animated: true)
    }
    @objc func handleNewMessage() {
        let newMessageController = NewMessageController()
        newMessageController.messagesController = self
        let navController = UINavigationController(rootViewController: newMessageController )
        present(UINavigationController(rootViewController: newMessageController), animated: true, completion: nil)
    }
    func checkIfUserIsLoggedIn() {
        messages.removeAll()
        messagesDictionary.removeAll()
        tableView.reloadData()
        
        observeUserMessages()
        
        if Auth.auth().currentUser?.uid == nil {
            perform(#selector(handleLogout), with: nil, afterDelay: 0)
        } else {
            let uid = Auth.auth().currentUser?.uid
            Database.database().reference().child("users").child(uid!).observeSingleEvent(of: .value, with: {(snapshot) in
                if let dictionary = snapshot.value as? [String:AnyObject] {
                    self.navigationItem.title = dictionary["name"] as? String
                }
                print(snapshot)
            }, withCancel: nil)
        }
    }
    @objc func handleLogout() {
        do {
            try Auth.auth().signOut()
        } catch let logoutError {
            print(logoutError)
        }
    }
}

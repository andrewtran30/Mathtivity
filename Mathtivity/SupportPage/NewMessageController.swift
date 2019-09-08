//
//  NewMessageController.swift
//  Mathtivity
//
//  Created by Andrew Tran on 1/12/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//

import UIKit
import Firebase
class NewMessageController: UITableViewController {
    let cellId = "cellId"
    var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancel))
        tableView.register(UserCell.self, forCellReuseIdentifier: cellId)
        fetchUser()
    }
    
    @objc func fetchUser() {
        Database.database().reference().child("users").observe(.childAdded, with: { (snapshot) in
            if let dictionary = snapshot.value as? [String: AnyObject] {
                                let user = User()
                                user.id = snapshot.key
                
                                //if you use this setter, your app will crash if your class properties don't match up with the firebase dictionary keys
                               // user.setValuesForKeys(dictionary)
                user.name = dictionary["name"] as! String
                user.email = dictionary["email"] as! String
                
                                self.users.append(user)
                //              This will make the program crash because of background thread, so lets use dispatch_async to fix it
                                self.tableView.reloadData()
                //                DispatchQueue.main.async(execute: {
                //                    self.tableView.reloadData()
                //                })
                
                
                
                //              user.name = dictionary["name"]
                            }
        }, withCancel: nil)
    }
    @objc func handleCancel() {
        dismiss(animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("PRINT STATEMENT", users)
        let user = users[indexPath.row]
        //lets use a hack for now, we actually need to deque are cells for memory efficiency
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellId)
//        cell.textLabel?.text = user.name
//        cell.detailTextLabel?.text = user.email
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
       
        cell.textLabel?.text = user.name
        cell.detailTextLabel?.text = user.email
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
    
    var messagesController: SupportViewController?
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true) {
            let user = self.users[indexPath.row]
            self.messagesController?.showChatControllerForUser(user: user)
        }
      
    }
}

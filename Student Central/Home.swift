//
//  ViewController.swift
//  Student Central
//
//  Created by Adarsh Goura on 11/28/22.
//

import UIKit

var currentUser = User(id: 42948, firstName: "Adarsh", lastName: "Goura", username: "axg1559", schedule: [Class(period: 1, name: "Class1", teacher: "Ms. Teacher", roomNumber: "C153")])

class HomeViewController: UIViewController {

    @IBOutlet var UserLbl: UILabel!
    @IBOutlet var NotifBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateNotifBtn()
        if notifBadgeOn {
            NotifBtn.setImage(UIImage(systemName: "bell.badge.fill"), for: .normal)
        } else {
            NotifBtn.setImage(UIImage(systemName: "bell.fill"), for: .normal)
        }
        
        UserLbl.text = "Hello \(currentUser.firstName), Today is an A day"
    }
    
    @IBAction func notifClicked(_ sender: Any) {
        for i in 0...notificationList.count-1 {
            notificationList[i].didRead = true
        }
        updateNotifBtn()
    }
    

}

struct User {
    var id: Int
    var firstName: String
    var lastName: String
    var middleName: String?
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    var username: String
    var email: String {
        return "\(username)@g.coppellisd.com"
    }
    
    var schedule: [Class]
}

struct Class {
    var period: Int
    var name: String
    var teacher: String
    var roomNumber: String
}

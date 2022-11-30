//
//  Notifications.swift
//  Student Central
//
//  Created by Adarsh Goura on 11/28/22.
//

import UIKit

var notifBadgeOn = false
var selectedNotif = Notif(title: "", body: "", image: "")

var notificationList: [Notif] = [Notif(title: "Coppell won sport", body: "; did rlly good at sport game haha really good yippee whooo whooo go coppell slay yay yay", image: "sport"), Notif(title: "Coppell won band", body: "Coppell went to other place and played band and they were good really good so good that they won best band ever", image: "band")]

struct Notif {
    var title: String
    var body: String
    var image: String
    var didRead: Bool = false
}

func updateNotifBtn() {
    var unreadList: [Notif] = []
    for notif in notificationList {
        if !notif.didRead {
            unreadList.append(notif)
        }
    }
    
    if !unreadList.isEmpty {
        notifBadgeOn = true
    } else {
        notifBadgeOn = false
    }
    
    print("notif badge: \(notifBadgeOn)")
}

func newNotification(title: String, body: String, img: String) {
    let notif = Notif(title: title, body: body, image: img)
    notificationList.append(notif)
}

class NotificationsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateNotifBtn()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return notificationList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath)
        print(cell)
        // Configure the cell...

        let label = cell.viewWithTag(2000) as! UILabel
        let image = cell.viewWithTag(500) as! UIImageView
        
        for i in 0...notificationList.count {
            if indexPath.row == i {
                label.text = notificationList[i].title
                image.image = UIImage(named: notificationList[i].image)
            }
        }
        // End of new code block
        return cell
    }
    
    override func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
        switch (indexPath[1]) {
        case 0:
            print("Notification 1")
            selectedNotif = notificationList[0]
        case 1:
            print("Notification 2")
            selectedNotif = notificationList[1]
        default:
            print("error")
        }
        
    }
    
//    func goToNotif() {
//        let targetViewController = storyboard!.instantiateViewController(withIdentifier: "notificationItem") as! NotificationViewController
//        self.navigationController?.pushViewController(targetViewController, animated: true)
//    }

}

class NotificationViewController: UIViewController {

    @IBOutlet var NotifImage: UIImageView!
    @IBOutlet var NotifTtl: UILabel!
    @IBOutlet var NotifBody: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotifImage.image = UIImage(named: selectedNotif.image)
        NotifTtl.text = selectedNotif.title
        NotifBody.text = selectedNotif.body
        selectedNotif.didRead = true
    }
}


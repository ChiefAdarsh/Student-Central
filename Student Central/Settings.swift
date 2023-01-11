//
//  Settings.swift
//  Student Central
//
//  Created by Adarsh Goura on 11/28/22.
//

import UIKit

var item = "About"

class SettingsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingItem", for: indexPath)

        // Configure the cell...

        let label = cell.viewWithTag(1000) as! UILabel
        if indexPath.row == 0 {
        label.text = "About"
        } else if indexPath.row == 1 {
        label.text = "Privacy Policy"
        } else if indexPath.row == 2 {
        label.text = "Feedback"
        }
        // End of new code block
        return cell
    }
    
    override func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
        switch (indexPath[1]) {
        case 0:
            print("About")
            item = "The CHS Student Central app gives you a personalized view of everything you need for school. Get all of your school information in one place. Students Can: - Look at campus news and information - Open school map to navigate around campus - View class schedule for A, B and C days - View the calendar for the school year - Contact their counselors and teachers - Access essential student links such as HAC - Request additional support if needed"
            goToSetting()
        case 1:
            print("Privacy Policy")
            item = "CHS Student Central we respect the privacy of our users. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our mobile communication  application. Please read this Privacy Policy carefully. IF YOU DO NOT AGREE WITH THE  TERMS OF THIS PRIVACY POLICY, PLEASE DO NOT ACCESS THE APPLICATION. We reserve the right to make changes to this Privacy Policy at any time and for any reason. We will alert you about any changes by updating the “Last updated” date of this Privacy Policy. You are encouraged to periodically review this Privacy Policy to stay informed of updates. You will be deemed to have been made aware of, will be subject to, and will be deemed to have  accepted the changes in any revised Privacy Policy by your continued use of the Application  after the date such revised Privacy Policy is posted. This Privacy Policy does not apply to the third-party online/mobile store from which you install  the Application, including any in-game virtual items, which may also collect and use data about  you. We are not responsible for any of the data collected by any such third party. COLLECTION OF YOUR INFORMATION We may collect information about you in a variety of ways. The information we may collect via  the Application depends on the content and materials you use, and includes: Personal Data We do not collect personally identifiable information (PII) about you unless you choose to provide that information to us.  Any PII you choose to provide is protected by security protocols and consistent with standards. Any PII (such as name, email, and other contacts) will be stored privately. It may be shared with counselors and other administrators but will not be public information. Mobile Device Access: We may request access or permission to certain features from your mobile device. If you wish to change our access or permissions, you may do so  in your device’s settings. Push Notifications: We may request to send you push notifications regarding your account or the Application. If you wish to opt-out from receiving these types of communications, you may turn them off in your device’s settings. Location Information: We may use information about your location depending on the permissions you have set on your device. We use this information to provide features of our Service, to improve and customize our Service. You can enable or disable location services when you use our Service at any time, through your mobile device settings. USE OF YOUR INFORMATION: Having accurate information about you permits us to provide you with a smooth, efficient, and  customized experience. Specifically, we may use information collected about you via the  Application to: 1. Enable user-to-user communications. 2. Increase the efficiency and operation of the Application. 3. Request feedback and contact you about your use of the Application. Resolve disputes and troubleshoot problems. 4. Send you a newsletter. 5. Solicit support for the Application. DISCLOSURE OF YOUR INFORMATION: We may share information we have collected about you in certain situations. Your information may be disclosed as follows: By Law or to Protect Rights: If we believe the release of information (such as name and email) about you is necessary to respond to legal process, to investigate or remedy potential violations of our policies, or to protect the rights, property, and safety of others, we may share your information as permitted or required by any applicable law, rule, or regulation. Interactions with Other Users: If you interact with other users of the Application, those users may see your name, profile photo, and descriptions of your activity, including sending invitations to other users, chatting with other  users, liking posts, following blogs. THIRD-PARTY WEBSITES: The Application may contain links to third-party websites and applications of interest, including advertisements and external services, that are not affiliated with us. Once you have used these links to leave the Application, any information you provide to these third parties is not covered  by this Privacy Policy, and we cannot guarantee the safety and privacy of your information.  Before visiting and providing any information to any third-party websites, you should inform  yourself of the privacy policies and practices (if any) of the third party responsible for that website, and should take those steps necessary to, in your discretion, protect the privacy of your  information. We are not responsible for the content or privacy and security practices and  policies of any third parties, including other sites, services or applications that may be linked to  or from the Application. SECURITY OF YOUR INFORMATION: We use administrative, technical, and physical security measures to help protect your personal  information. While we have taken reasonable steps to secure the personal information you provide to us, please be aware that despite our efforts, no security measures are perfect or  impenetrable, and no method of data transmission can be guaranteed against any interception or other type of misuse. OPTIONS  REGARDING YOUR INFORMATION: You may at any time review or change the information in your account: ● Logging into your account settings and updating your account ● Contacting us using the contact information provided below"
            goToSetting()
        case 2:
            if let url = NSURL(string: "https://www.google.com"){
                UIApplication.shared.open(url as URL)
            }
            print("Feedback")
            item = "Feedback"
            
        default:
            print("error")
        }
        
    }
    
    func goToSetting() {
        var targetViewController = storyboard!.instantiateViewController(withIdentifier: "settingItem") as! SettingItemViewController
        self.navigationController?.pushViewController(targetViewController, animated: true)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

class SettingItemViewController: UIViewController {

    @IBOutlet var TxtView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        NavTtl.title = item
        TxtView.text = item + " " + item + " " + item + " " + item + " "
    }
}

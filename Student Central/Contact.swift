//
//  Contact Counselor.swift
//  Student Central
//
//  Created by Adarsh Goura on 11/28/22.
//

import UIKit

class CounselorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func rotation() {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

import UIKit
import MessageUI
class TeacherViewController: UIViewController, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate {
    @IBOutlet var sv: UIStackView!
    @IBOutlet var teacher1Label: UILabel!
    @IBOutlet var mail1Label: UILabel!
    @IBOutlet var teacher2Label: UILabel!
    
    
    func rotation() {
        let size = UIScreen.main.bounds.size
        if size.height < size.width {
            sv.axis = .horizontal
            sv.spacing = 66
            teacher1Label.font = .systemFont(ofSize: 35, weight: .bold)
            mail1Label.font = .systemFont(ofSize: 20, weight: .bold)
        } else {
            sv.axis = .vertical
            sv.spacing = 0
            teacher1Label.font = .systemFont(ofSize: 20, weight: .bold)
            mail1Label.font = .systemFont(ofSize: 15, weight: .bold)
        }
        
//        let navCtr = (self.storyboard!.instantiateViewController(withIdentifier: "navCtr") as! UINavigationController)
//        let controllers = navCtr.viewControllers
//        if size.height < size.width {
//            print(controllers)
//            if let vc = controllers[controllers.count-1] as? TeacherViewController {
//                print("here")
//                vc.removeFromParent()
//            }
//            print(navCtr.viewControllers)
//
//            let lvc = self.storyboard!.instantiateViewController(withIdentifier: "LandscapeVC") as! TeacherViewController
//            navCtr.pushViewController(lvc, animated: true)
//        } else {
//            if let vc = controllers[controllers.count-1] as? TeacherViewController {
//                vc.removeFromParent()
//            }
//
//            let pvc = self.storyboard!.instantiateViewController(withIdentifier: "portraitViewController") as! TeacherViewController
//            navCtr.pushViewController(pvc, animated: true)
//        }
    }
    
    // Change layout of in and out of school buttons to vertical
    // or horizontal based on device orientation
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        rotation()
    }
    
    @IBOutlet weak var mailOne: UILabel!
    @IBOutlet weak var mailTwo: UILabel!
    @IBOutlet weak var mailThree: UILabel!
    @IBOutlet weak var mailFour: UILabel!
    @IBOutlet weak var mailFive: UILabel!
    @IBOutlet weak var mailSix: UILabel!
    @IBOutlet weak var mailSeven: UILabel!
    @IBOutlet weak var mailEight: UILabel!
    
    @IBAction func buttonOne(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let message = MFMailComposeViewController()
            message.delegate = self
            let mailTo = mailOne.text!
            message.setToRecipients([mailTo])
            
        } else {
            let alertController = UIAlertController(title: "Mail Not Enabled", message: "Your device is not configured to send email", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let message = MFMailComposeViewController()
            message.delegate = self
            let mailTo = mailTwo.text!
            message.setToRecipients([mailTo])
            
        } else {
            let alertController = UIAlertController(title: "Mail Not Enabled", message: "Your device is not configured to send email", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let message = MFMailComposeViewController()
            message.delegate = self
            let mailTo = mailThree.text!
            message.setToRecipients([mailTo])
            
        } else {
            let alertController = UIAlertController(title: "Mail Not Enabled", message: "Your device is not configured to send email", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let message = MFMailComposeViewController()
            message.delegate = self
            let mailTo = mailFour.text!
            message.setToRecipients([mailTo])
            
        } else {
            let alertController = UIAlertController(title: "Mail Not Enabled", message: "Your device is not configured to send email", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let message = MFMailComposeViewController()
            message.delegate = self
            let mailTo = mailFive.text!
            message.setToRecipients([mailTo])
            
        } else {
            let alertController = UIAlertController(title: "Mail Not Enabled", message: "Your device is not configured to send email", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let message = MFMailComposeViewController()
            message.delegate = self
            let mailTo = mailSix.text!
            message.setToRecipients([mailTo])
            
        } else {
            let alertController = UIAlertController(title: "Mail Not Enabled", message: "Your device is not configured to send email", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let message = MFMailComposeViewController()
            message.delegate = self
            let mailTo = mailSeven.text!
            message.setToRecipients([mailTo])
            
        } else {
            let alertController = UIAlertController(title: "Mail Not Enabled", message: "Your device is not configured to send email", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let message = MFMailComposeViewController()
            message.delegate = self
            let mailTo = mailEight.text!
            message.setToRecipients([mailTo])
            
        } else {
            let alertController = UIAlertController(title: "Mail Not Enabled", message: "Your device is not configured to send email", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rotation()
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  Student Central
//
//  Created by Adarsh Goura on 11/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mySchoolBucks: UIButton!
    @IBOutlet var KCBY: UIButton!
    @IBOutlet var Sidekick: UIButton!
    @IBOutlet var lunchMenu: UIButton!
    @IBOutlet var helpDesk: UIButton!
    @IBOutlet var homeAccessCenter: UIButton!
    @IBOutlet var Clever: UIButton!
    @IBOutlet var coppellISD: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func schoolBucksLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.myschoolbucks.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func KCBYLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.kcbycoppell.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func MediaLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://coppellstudentmedia.com/tag/sidekick-newspaper/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func menuLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://coppellisd.nutrislice.com/menu/coppell-high-school")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func helpDeskLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://cisdsupport.freshservice.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func hacLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://hac.coppellisd.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func cleverLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://clever.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func cisdLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.coppellisd.com")! as URL, options: [:], completionHandler: nil)
    }
}

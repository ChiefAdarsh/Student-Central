//
//  Schedule.swift
//  Student Central
//
//  Created by Adarsh Goura on 11/28/22.
//

import UIKit

class ClassScheduleViewController: UIViewController {
    @IBOutlet var segue: UISegmentedControl!
    @IBOutlet var sv: UIStackView!
    @IBOutlet var sv2: UIStackView!
    @IBOutlet var viewContainer: UIView!
    @IBOutlet var svView1: UIView!
    @IBOutlet var svView2: UIView!
    
    @IBAction func seguePressed(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            viewContainer.bringSubviewToFront(svView2)
            break;
        case 1:
            viewContainer.bringSubviewToFront(svView2)
            break;
        case 2:
            viewContainer.bringSubviewToFront(svView1)
            break;
        default:
            break;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewContainer.bringSubviewToFront(svView2)
    }
}

class ShuttleViewController: UIViewController {
    @IBOutlet var route1: UILabel!
    @IBOutlet var sv: UIStackView!
    @IBOutlet var route2: UILabel!
    
    func rotation() {
        let size = UIScreen.main.bounds.size
        if size.height < size.width {
            sv.axis = .horizontal
            sv.spacing = 97
        } else {
            sv.axis = .vertical
            sv.spacing = 50
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        rotation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rotation()
        
        let textRange1 = NSMakeRange(0, route1.text!.count)
        let attributedText1 = NSMutableAttributedString(string: route1.text!)
        attributedText1.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: textRange1)
        route1.attributedText = attributedText1
        
        let textRange2 = NSMakeRange(0, route2.text!.count)
        let attributedText2 = NSMutableAttributedString(string: route2.text!)
        attributedText2.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: textRange2)
        route2.attributedText = attributedText2
    }
}

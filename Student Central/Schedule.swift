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
    
    // A-B day elements
    @IBOutlet var class15: UITextField!
    @IBOutlet var teacher15: UITextField!
    @IBOutlet var class26: UITextField!
    @IBOutlet var teacher26: UITextField!
    @IBOutlet var end26: UILabel!
    @IBOutlet var lunchDropdown: UIButton!
    @IBOutlet var lunchStart: UILabel!
    @IBOutlet var lunchEnd: UILabel!
    @IBOutlet var class37: UITextField!
    @IBOutlet var teacher37: UITextField!
    @IBOutlet var start37: UILabel!
    @IBOutlet var class48: UITextField!
    @IBOutlet var teacher48: UITextField!
    
    // A Day
    var classesA: [String]!
    var teachersA: [String]!
    var lunchTypeA: String!
    
    // B Day
    var classesB: [String]!
    var teachersB: [String]!
    var lunchTypeB: String!
    
    // C Day elements
    @IBOutlet var class1C: UITextField!
    @IBOutlet var teacher1C: UITextField!
    @IBOutlet var class5C: UITextField!
    @IBOutlet var teacher5C: UITextField!
    @IBOutlet var class2C: UITextField!
    @IBOutlet var teacher2C: UITextField!
    @IBOutlet var class6C: UITextField!
    @IBOutlet var teacher6C: UITextField!
    @IBOutlet var end6C: UILabel!
    @IBOutlet var lunchDropdownC: UIButton!
    @IBOutlet var lunchStartC: UILabel!
    @IBOutlet var lunchEndC: UILabel!
    @IBOutlet var class3C: UITextField!
    @IBOutlet var teacher3C: UITextField!
    @IBOutlet var start3C: UILabel!
    @IBOutlet var class7C: UITextField!
    @IBOutlet var teacher7C: UITextField!
    @IBOutlet var class4C: UITextField!
    @IBOutlet var teacher4C: UITextField!
    @IBOutlet var class8C: UITextField!
    @IBOutlet var teacher8C: UITextField!
    
    // A & B Day Closures
    lazy var placeholderClosureAB = { [self](action: UIAction) in
        self.lunchDropdown.setTitleColor(.link, for: .normal)
        
        lunchStart.text = "--------"
        lunchEnd.text = "--------"
        start37.text = "12:10 PM"
        
        return
    }
    lazy var optionClosureAB = { [self](action: UIAction) in
        self.lunchDropdown.setTitleColor(.black, for: .normal)
        
        switch(action.title) {
        case "A Lunch":
            lunchStart.text = "12:05 PM"
            lunchEnd.text = "12:35 PM"
            start37.text = "12:40 PM"
            break;
        case "B Lunch":
            lunchStart.text = "12:45 PM"
            lunchEnd.text = "1:15 PM"
            start37.text = "1:20 PM"
            break;
        default:
            lunchStart.text = "1:25 PM"
            lunchEnd.text = "1:55 PM"
            start37.text = "2:00 PM"
            break;
        }
        
        return
    }
    
    // C Day Closures
    lazy var placeholderClosureC = { [self](action: UIAction) in
        self.lunchDropdownC.setTitleColor(.link, for: .normal)
        
        lunchStartC.text = "--------"
        lunchEndC.text = "--------"
        start3C.text = "12:10 PM"
        
        return
    }
    lazy var optionClosureC = { [self](action: UIAction) in
        self.lunchDropdownC.setTitleColor(.black, for: .normal)
        
        switch(action.title) {
        case "A Lunch":
            lunchStartC.text = "12:05 PM"
            lunchEndC.text = "12:35 PM"
            start3C.text = "12:35 PM"
            break;
        case "B Lunch":
            lunchStartC.text = "12:20 PM"
            lunchEndC.text = "1:10 PM"
            start3C.text = "1:10 PM"
            break;
        default:
            lunchStartC.text = "1:15 PM"
            lunchEndC.text = "1:45 PM"
            start3C.text = "1:45 PM"
            break;
        }
        
        return
    }
    
    func reloadData(isA: Bool) {
        var lunchType = ""
        if isA {
            class15.text = classesA[0]
            class26.text = classesA[1]
            class37.text = classesA[2]
            class48.text = classesA[3]
            
            teacher15.text = teachersA[0]
            teacher26.text = teachersA[1]
            teacher37.text = teachersA[2]
            teacher48.text = teachersA[3]
            
            lunchType = lunchTypeA
        } else {
            class15.text = classesB[0]
            class26.text = classesB[1]
            class37.text = classesB[2]
            class48.text = classesB[3]
            
            teacher15.text = teachersB[0]
            teacher26.text = teachersB[1]
            teacher37.text = teachersB[2]
            teacher48.text = teachersB[3]
            
            lunchType = lunchTypeB
        }
        
        var actionArr: [UIAction] = []
        if "Select Lunch" != lunchType {
            actionArr.append(UIAction(title: "Select Lunch", handler: placeholderClosureC))
        }
        if "A Lunch" != lunchType {
            actionArr.append(UIAction(title: "A Lunch", handler: optionClosureAB))
        }
        if "B Lunch" != lunchType {
            actionArr.append(UIAction(title: "B Lunch", handler: optionClosureAB))
        }
        if "C Lunch" != lunchType {
            actionArr.append(UIAction(title: "C Lunch", handler: optionClosureAB))
        }
        
        let newAction = UIAction(title: lunchType, state: .on, handler: lunchType == "Select Lunch" ? placeholderClosureAB : optionClosureAB)
        actionArr.append(newAction)
        lunchDropdown.menu = UIMenu(children: actionArr)
        
        if(lunchType == "Select Lunch") {
            placeholderClosureAB(newAction)
        } else {
            optionClosureAB(newAction)
        }
    }
    
    @IBAction func seguePressed(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            viewContainer.bringSubviewToFront(svView2)
            reloadData(isA: true)
            break;
        case 1:
            viewContainer.bringSubviewToFront(svView2)
            reloadData(isA: false)
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
        
        classesA = ["Class 1", "Class 2", "Class 3", "Class 4"]
        teachersA = ["Teacher 1", "Teacher 2", "Teacher 3", "Teacher 4"]
        lunchTypeA = "Select Lunch"
        
        classesB = ["Class 5", "Class 6", "Class 7", "Class 8"]
        teachersB = ["Teacher 5", "Teacher 6", "Teacher 7", "Teacher 8"]
        lunchTypeB = "Select Lunch"
        
        // A & B Day Lunch Dropdown
        
        lunchDropdown.showsMenuAsPrimaryAction = true
        lunchDropdown.changesSelectionAsPrimaryAction = true
        lunchDropdown.menu = UIMenu(children: [
            UIAction(title: "Select Lunch", state: .on, handler: placeholderClosureAB),
            UIAction(title: "A Lunch", handler: optionClosureAB),
            UIAction(title: "B Lunch", handler: optionClosureAB),
            UIAction(title: "C Lunch", handler: optionClosureAB)
        ])
        
        // C Day Lunch Dropdown
        
        lunchDropdownC.showsMenuAsPrimaryAction = true
        lunchDropdownC.changesSelectionAsPrimaryAction = true
        lunchDropdownC.menu = UIMenu(children: [
            UIAction(title: "Select Lunch", state: .on, handler: placeholderClosureC),
            UIAction(title: "A Lunch", handler: optionClosureC),
            UIAction(title: "B Lunch", handler: optionClosureC),
            UIAction(title: "C Lunch", handler: optionClosureC)
        ])
        
        // Reload data
        reloadData(isA: true)
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

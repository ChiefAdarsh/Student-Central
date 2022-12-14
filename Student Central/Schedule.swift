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
    
    var isA: Bool = true
    var archiveURLs: [URL] = []
    let documentsDirectory =
       FileManager.default.urls(for: .documentDirectory,
       in: .userDomainMask).first!
    
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
    var classesC: [String]!
    var teachersC: [String]!
    var lunchTypeC: String!
    
    struct Day: Codable {
        let type: String
        let classes: [String]
        let teachers: [String]
        let lunchType: String
    }
    
    // A & B Day Closures
    lazy var placeholderClosureAB = { [self](action: UIAction) in
        self.lunchDropdown.setTitleColor(.link, for: .normal)
        
        lunchStart.text = "--------"
        lunchEnd.text = "--------"
        start37.text = "12:10 PM"
        if isA {
            lunchTypeA = "Select Lunch"
            updateDataA()
        } else {
            lunchTypeB = "Select Lunch"
            updateDataB()
        }
        
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
        
        if isA {
            lunchTypeA = action.title
            updateDataA()
        } else {
            lunchTypeB = action.title
            updateDataB()
        }
        
        return
    }
    
    // C Day Closures
    lazy var placeholderClosureC = { [self](action: UIAction) in
        self.lunchDropdownC.setTitleColor(.link, for: .normal)
        
        lunchStartC.text = "--------"
        lunchEndC.text = "--------"
        start3C.text = "12:10 PM"
        lunchTypeC = "Select Lunch"
        updateDataC()
        
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
        
        lunchTypeC = action.title
        updateDataC()
        
        return
    }
    
    func reloadDataAB() {
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
    
    func reloadDataC() {
        class1C.text = classesC[0]
        class2C.text = classesC[1]
        class3C.text = classesC[2]
        class4C.text = classesC[3]
        class5C.text = classesC[4]
        class6C.text = classesC[5]
        class7C.text = classesC[6]
        class8C.text = classesC[7]
        
        teacher1C.text = teachersC[0]
        teacher2C.text = teachersC[1]
        teacher3C.text = teachersC[2]
        teacher4C.text = teachersC[3]
        teacher5C.text = teachersC[4]
        teacher6C.text = teachersC[5]
        teacher7C.text = teachersC[6]
        teacher8C.text = teachersC[7]
        
        var actionArr: [UIAction] = []
        if "Select Lunch" != lunchTypeC {
            actionArr.append(UIAction(title: "Select Lunch", handler: placeholderClosureC))
        }
        if "A Lunch" != lunchTypeC {
            actionArr.append(UIAction(title: "A Lunch", handler: optionClosureC))
        }
        if "B Lunch" != lunchTypeC {
            actionArr.append(UIAction(title: "B Lunch", handler: optionClosureC))
        }
        if "C Lunch" != lunchTypeC {
            actionArr.append(UIAction(title: "C Lunch", handler: optionClosureC))
        }
        
        let newAction = UIAction(title: lunchTypeC, state: .on, handler: lunchTypeC == "Select Lunch" ? placeholderClosureC : optionClosureC)
        actionArr.append(newAction)
        lunchDropdownC.menu = UIMenu(children: actionArr)
        
        if(lunchTypeC == "Select Lunch") {
            placeholderClosureC(newAction)
        } else {
            optionClosureC(newAction)
        }
    }
    
    func updateDataA() {
        let newDay = Day(type: "A", classes: classesA, teachers: teachersA, lunchType: lunchTypeA)
        let jsonEncoder = JSONEncoder()
        if let jsonData = try? jsonEncoder.encode(newDay),
            let jsonString = String(data: jsonData, encoding: .utf8) {
            print(jsonString)
            
            try? jsonData.write(to: self.archiveURLs[0],
               options: .noFileProtection)
        }
    }
    
    func updateDataB() {
        let newDay = Day(type: "B", classes: classesB, teachers: teachersB, lunchType: lunchTypeB)
        let jsonEncoder = JSONEncoder()
        if let jsonData = try? jsonEncoder.encode(newDay),
            let jsonString = String(data: jsonData, encoding: .utf8) {
            print(jsonString)
            
            try? jsonData.write(to: self.archiveURLs[1],
               options: .noFileProtection)
        }
    }
    
    func updateDataC() {
        let newDay = Day(type: "C", classes: classesC, teachers: teachersC, lunchType: lunchTypeC)
        let jsonEncoder = JSONEncoder()
        if let jsonData = try? jsonEncoder.encode(newDay),
            let jsonString = String(data: jsonData, encoding: .utf8) {
            print(jsonString)
            
            try? jsonData.write(to: self.archiveURLs[2],
               options: .noFileProtection)
        }
    }
    
    @IBAction func class15Edited(_ sender: UITextField) {
        if(isA) {
            classesA[0] = sender.text!
            updateDataA()
        } else {
            classesB[0] = sender.text!
            updateDataB()
        }
    }
    
    @IBAction func class26Edited(_ sender: UITextField) {
        if(isA) {
            classesA[1] = sender.text!
            updateDataA()
        } else {
            classesB[1] = sender.text!
            updateDataB()
        }
    }
    
    @IBAction func class37Edited(_ sender: UITextField) {
        if(isA) {
            classesA[2] = sender.text!
            updateDataA()
        } else {
            classesB[2] = sender.text!
            updateDataB()
        }
    }
    
    @IBAction func class48Edited(_ sender: UITextField) {
        if(isA) {
            classesA[3] = sender.text!
            updateDataA()
        } else {
            classesB[3] = sender.text!
            updateDataB()
        }
    }
    
    @IBAction func teacher15Edited(_ sender: UITextField) {
        if(isA) {
            teachersA[0] = sender.text!
            updateDataA()
        } else {
            teachersB[0] = sender.text!
            updateDataB()
        }
    }
    
    @IBAction func teacher26Edited(_ sender: UITextField) {
        if(isA) {
            teachersA[1] = sender.text!
            updateDataA()
        } else {
            teachersB[1] = sender.text!
            updateDataB()
        }
    }
    
    @IBAction func teacher37Edited(_ sender: UITextField) {
        if(isA) {
            teachersA[2] = sender.text!
            updateDataA()
        } else {
            teachersB[2] = sender.text!
            updateDataB()
        }
    }
    
    @IBAction func teacher48Edited(_ sender: UITextField) {
        if(isA) {
            teachersA[3] = sender.text!
            updateDataA()
        } else {
            teachersB[3] = sender.text!
            updateDataB()
        }
    }
    
    @IBAction func class1CEdited(_ sender: UITextField) {
        classesC[0] = class1C.text!
        updateDataC()
    }
    @IBAction func class5CEdited(_ sender: UITextField) {
        classesC[4] = class5C.text!
        updateDataC()
    }
    @IBAction func class2CEdited(_ sender: UITextField) {
        classesC[1] = class2C.text!
        updateDataC()
    }
    @IBAction func class6CEdited(_ sender: UITextField) {
        classesC[5] = class6C.text!
        updateDataC()
    }
    @IBAction func class3CEdited(_ sender: UITextField) {
        classesC[2] = class3C.text!
        updateDataC()
    }
    @IBAction func class7CEdited(_ sender: UITextField) {
        classesC[6] = class7C.text!
        updateDataC()
    }
    @IBAction func class4CEdited(_ sender: UITextField) {
        classesC[3] = class4C.text!
        updateDataC()
    }
    @IBAction func class8CEdited(_ sender: UITextField) {
        classesC[7] = class8C.text!
        updateDataC()
    }
    
    @IBAction func teacher1CEdited(_ sender: UITextField) {
        teachersC[0] = teacher1C.text!
        updateDataC()
    }
    @IBAction func teacher5CEdited(_ sender: UITextField) {
        teachersC[4] = teacher5C.text!
        updateDataC()
    }
    @IBAction func teacher2CEdited(_ sender: UITextField) {
        teachersC[1] = teacher2C.text!
        updateDataC()
    }
    @IBAction func teacher6CEdited(_ sender: UITextField) {
        teachersC[5] = teacher6C.text!
        updateDataC()
    }
    @IBAction func teacher3CEdited(_ sender: UITextField) {
        teachersC[2] = teacher3C.text!
        updateDataC()
    }
    @IBAction func teacher7CEdited(_ sender: UITextField) {
        teachersC[6] = teacher7C.text!
        updateDataC()
    }
    @IBAction func teacher4CEdited(_ sender: UITextField) {
        teachersC[3] = teacher4C.text!
        updateDataC()
    }
    @IBAction func teacher8CEdited(_ sender: UITextField) {
        teachersC[7] = teacher8C.text!
        updateDataC()
    }
    
    @IBAction func seguePressed(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            isA = true
            viewContainer.bringSubviewToFront(svView2)
            reloadDataAB()
            break;
        case 1:
            isA = false
            viewContainer.bringSubviewToFront(svView2)
            reloadDataAB()
            break;
        case 2:
            isA = false
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
        
        classesC = ["Class 1", "Class 2", "Class 3", "Class 4", "Class 5", "Class 6", "Class 7", "Class 8"]
        teachersC = ["Teacher 1", "Teacher 2", "Teacher 3", "Teacher 4", "Teacher 5", "Teacher 6", "Teacher 7", "Teacher 8"]
        lunchTypeC = "Select Lunch"
        
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
        
        for i in 0..<3 {
            let url = documentsDirectory.appendingPathComponent("day\(i + 1)")
                .appendingPathExtension("plist")
            archiveURLs.append(url)
            
            let jsonDecoder = JSONDecoder()
            if let retrievedData = try? Data(contentsOf: url),
                let decodedData = try?
               jsonDecoder.decode(Day.self,
               from: retrievedData) {
                print(decodedData)
                
                switch(decodedData.type) {
                case "A":
                    classesA = decodedData.classes
                    teachersA = decodedData.teachers
                    lunchTypeA = decodedData.lunchType
                    break;
                case "B":
                    classesB = decodedData.classes
                    teachersB = decodedData.teachers
                    lunchTypeB = decodedData.lunchType
                    break;
                default:
                    classesC = decodedData.classes
                    teachersC = decodedData.teachers
                    lunchTypeC = decodedData.lunchType
                    break;
                }
            }
        }
        
        // Reload data
        reloadDataAB()
        reloadDataC()
    }
}

class ShuttleViewController: UIViewController {
    @IBOutlet var route1: UILabel!
    @IBOutlet var sv: UIStackView!
    @IBOutlet var route2: UILabel!
    @IBOutlet var scheduleSwitch: UISegmentedControl!
    
    // Periods
    @IBOutlet var period1: UILabel!
    @IBOutlet var period2: UILabel!
    @IBOutlet var period3: UILabel!
    @IBOutlet var period4: UILabel!
    @IBOutlet var period5: UILabel!
    @IBOutlet var period6: UILabel!
    @IBOutlet var period7: UILabel!
    @IBOutlet var period8: UILabel!
    
    // Departure Times
    @IBOutlet var departure1: UILabel!
    @IBOutlet var departure2: UILabel!
    @IBOutlet var departure3: UILabel!
    @IBOutlet var departure4: UILabel!
    @IBOutlet var departure5: UILabel!
    @IBOutlet var departure6: UILabel!
    @IBOutlet var departure7: UILabel!
    @IBOutlet var departure8: UILabel!
    
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
    
    func setCHSSchedules() {
        period1.text = "1/5"
        period2.text = "2/6"
        period3.text = "3/7"
        period4.text = "4/8"
        
        period5.text = "1/5"
        period6.text = "2/6"
        period7.text = "3/7"
        period8.text = "4/8"
        
        departure1.text = "8:40 AM"
        departure2.text = "10:20 AM"
        departure3.text = "11:55 AM"
        departure4.text = "2:25 PM"
        
        departure5.text = "8:40 AM"
        departure6.text = "10:20 AM"
        departure7.text = "11:55 AM"
        departure8.text = "2:25 PM"
    }
    
    func setCHS9Schedules() {
        period1.text = "2/6"
        period2.text = "3/7"
        period3.text = "4/8"
        period4.text = "School End"
        
        period5.text = "1/5"
        period6.text = "2/6"
        period7.text = "3/7"
        period8.text = "4/8"
        
        departure1.text = "10:20 AM"
        departure2.text = "11:55 AM"
        departure3.text = "2:30 PM"
        departure4.text = "4:05 PM"
        
        departure5.text = "8:40 AM"
        departure6.text = "10:20 AM"
        departure7.text = "11:55 AM"
        departure8.text = "2:30 PM"
    }
    
    func setNewTechSchedules() {
        period1.text = "2/6"
        period2.text = "3/7"
        period3.text = "4/8"
        period4.text = "School End"
        
        period5.text = "2/6"
        period6.text = "3/7"
        period7.text = "4/8"
        period8.text = " "
        
        departure1.text = "10:20 AM"
        departure2.text = "12:00 PM"
        departure3.text = "2:25 PM"
        departure4.text = "4:00 PM"
        
        departure5.text = "10:20 AM"
        departure6.text = "12:00 PM"
        departure7.text = "2:25 PM"
        departure8.text = " "
        
    }
    
    @IBAction func scheduleSwitched(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            setCHSSchedules()
            break;
        case 1:
            setCHS9Schedules()
            break;
        default:
            setNewTechSchedules()
            break;
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

class CalendarViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpScrollView()
        imageView.image = UIImage(named:"calendar")
    }
    
    func setUpScrollView() {
        scrollView.delegate = self
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    

}

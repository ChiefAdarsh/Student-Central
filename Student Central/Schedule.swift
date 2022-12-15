//
//  Schedule.swift
//  Student Central
//
//  Created by Adarsh Goura on 11/28/22.
//

import UIKit

class ClassScheduleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

class ShuttleViewController: UIViewController {
    @IBOutlet var route1: UILabel!
    @IBOutlet var sv: UIStackView!
    @IBOutlet var route2: UILabel!
    @IBOutlet var switchViewAction: UISegmentedControl!
    
    @IBOutlet var p1: UILabel!
    @IBOutlet var p2: UILabel!
    @IBOutlet var p3: UILabel!
    @IBOutlet var p4: UILabel!
    @IBOutlet var p5: UILabel!
    @IBOutlet var p6: UILabel!
    @IBOutlet var p7: UILabel!
    @IBOutlet var p8: UILabel!
    
    @IBOutlet var dep1: UILabel!
    @IBOutlet var dep2: UILabel!
    @IBOutlet var dep3: UILabel!
    @IBOutlet var dep4: UILabel!
    @IBOutlet var dep5: UILabel!
    @IBOutlet var dep6: UILabel!
    @IBOutlet var dep7: UILabel!
    @IBOutlet var dep8: UILabel!
    
    
    
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
    
    @IBAction func switchViewAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            p1.text = "1/5"
            p2.text = "2/6"
            p3.text = "3/7"
            p4.text = "4/8"
            p5.text = "1/5"
            p6.text = "2/6"
            p7.text = "3/7"
            p8.text = "4/8"
            
            dep1.text = "8:40 AM"
            dep2.text = "10:20 AM"
            dep3.text = "11:55 AM"
            dep4.text = "2:25 PM"
            dep5.text = "8:40 AM"
            dep6.text = "10:20 AM"
            dep7.text = "11:55 AM"
            dep8.text = "2:25 PM"
            break
        case 1:
            p1.text = "2/6"
            p2.text = "3/7"
            p3.text = "4/8"
            p4.text = "School End"
            p5.text = "1/5"
            p6.text = "2/6"
            p7.text = "3/7"
            p8.text = "4/8"

            
            dep1.text = "10:20 AM"
            dep2.text = "11:55 AM"
            dep3.text = "2:30 PM"
            dep4.text = "4:05 PM"
            dep5.text = "8:35 AM"
            dep6.text = "10:20 AM"
            dep7.text = "11:55 AM"
            dep8.text = "2:30 PM"
        case 2:
            p1.text = "2/6"
            p2.text = "3/7"
            p3.text = "4/8"
            p4.text = "School End"
            p5.text = "2/6"
            p6.text = "3/7"
            p7.text = "4/8"
            p8.text = ""
            
            dep1.text = "10:20 AM"
            dep2.text = "12:00 PM"
            dep3.text = "2:25 PM"
            dep4.text = "4:00 PM"
            dep5.text = "10:20 AM"
            dep6.text = "12:00 PM"
            dep7.text = "2:25 PM"
            dep8.text = ""
        default:
            break
        }
        
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

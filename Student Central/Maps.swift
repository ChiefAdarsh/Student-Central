//
//  Maps.swift
//  Student Central
//
//  Created by Adarsh Goura on 11/28/22.
//

import UIKit

class MapsViewController: UIViewController {

    @IBOutlet var inOrOut: UILabel!
    @IBOutlet var toggle: UISwitch!
    @IBOutlet var maps: UIImageView!
    @IBOutlet var outsideMaps: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        outsideMaps.isHidden = true
        maps.isHidden = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func togglePressed(_ sender: UISwitch) {
        if sender.isOn {
            maps.isHidden = false
            outsideMaps.isHidden = true
            inOrOut.text = "In School"
        } else {
            maps.isHidden = true
            outsideMaps.isHidden = false
            inOrOut.text = "Out of School"
        }
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

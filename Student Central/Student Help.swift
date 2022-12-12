//
//  Student Help.swift
//  Student Central
//
//  Created by Adarsh Goura on 11/28/22.
//

import UIKit

class HelpViewController: UIViewController {

    @IBOutlet var stackView: UIStackView!
    
    
override func viewDidLoad() {
    super.viewDidLoad()
    let size = UIScreen.main.bounds.size
    if size.height < size.width {
        stackView.axis = .horizontal
    } else {
        stackView.axis = .vertical
    }
    // Do any additional setup after loading the view.
    
}
override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)
    guard let _ = stackView else { return }
    
    if UIDevice.current.orientation.isLandscape {
        stackView.axis = .horizontal
    } else {
        stackView.axis = .vertical
    }
}

}

class shelterResource: UITableViewController {
    
    @IBOutlet var TV: UITableView!
    
    var shelters: [String] = ["Red Cross", "Food Bank"]
    
    let organizations = [
        ["name": "Austin Street Center",
         "eligibility": ["Men: 45+", "Women: 18+", "No S.O"],
         "documents": ["ID"],
         "address": "2929 Hickory St, Dallas, TX 75226",
         "phone": "214-428-4242",
         "intake": ["Women: Mon-Sat 2pm, Sun 11am", "Men: Mon-Sat 2pm, Sun 2pm"],
         "programs": ["Housing-Focused Case Management", "Employment Resource Center", "Food Stamps Assistance", "Social Security Benefits", "ID Assistance", "Mental Health Services", "AA/NA Services"]],
        ["name": "The Bridge",
         "eligibility": ["Men: 18+", "Women: 18+"],
         "documents": ["VL"],
         "address": "1818 Corsicana St, Dallas, TX 75201",
         "phone": "214-670-1100",
         "intake": ["24/7/365"],
         "programs": ["Meals", "Shelter Day and Night", "Care Management", "MetroCare Services", "Dog Kennel Services", "Designated entry point for singles", "AA Services", "Parkland Health and Hospital System", "Veterans Administration", "Texas Workforce Commission", "Legal Aid of NorthWest Texas"]],
        ["name": "Center of Hope",
         "eligibility": ["Women: 18+", "Children"],
         "documents": ["ID", "SS"],
         "address": "4815 Cass St, Dallas, TX 75235",
         "phone": "214-638-2988",
         "intake": ["Women: Mon-Fri 10am-1pm"],
         "programs": ["Child Care", "Clinic", "Computer-aided education", "Discipleship", "Job training", "Shelter"]],
        ["name": "Dallas Life",
         "eligibility": ["Men: 18+", "Women: 18+", "Children"],
         "documents": ["ID", "SS"],
         "address": "1100 Cadiz St, Dallas, TX 75226",
         "phone": "214-421-1380",
         "intake": ["4pm-8pm"],
         "programs": ["10 month Homeless No More/Overcomers Programs", "Pay-to-stay: $12/day"]],
        ["name": "Family Gateway",
         "eligibility": ["Men: 18+", "Women: 18+", "Children"],
         "documents": ["ID", "BC", "SS", "VL"],
         "address": "711 S Saint Paul St, Dallas, TX 75201",
         "phone": "888-411-6802",
         "intake": ["Call 888-411-6802 or complete online assessment at Familygateway.org 24 hours a day / 7 days a week"],
         "programs": ["Assessment and Diversion", "Emergency Shelter and Supportive Housing", "Case Management", "Adult and Children Services", "Education Program"]],
        ["name": "The Family Place",
        "eligibility": ["Men", "Women", "Children"],
        "documents": ["ID"],
        "address": "withheld for safety, please call 24 hour crisis hotline at 214-941-1991",
        "phone": "214-941-1991",
        "intake": ["24 hour hotline", "Free"],
        "programs": ["Emergency Shelter", "Transitional Housing", "Legal Help", "Supervised visitation", "Domestic violence and incest counseling", "Batterer’s Intervention groups", "Job Training"]],
        ["name": "Salvation Army",
        "eligibility": ["Men", "Women", "Women with Children"],
        "documents": ["Must obtain ID and TB test within 10 days"],
        "address": "5302 Harry Hines Blvd, Dallas, TX 75235",
        "phone": "214-424-7050",
        "intake": ["First time: (unless full)", "Repeat: 3pm - 3:45pm", "Continuous stay for up to 90 days", "Crisis mats available upon 1st come 1st serve basis for prioritized individuals", "Join a program to stay longer"],
        "programs": ["90 day Emergency Shelter Program", "Transitional Shelter", "Domestic Violence Program", "Veterans Programs", "Homeless Recovery", "Food Pantry"]],
        ["name": "Union Gospel Mission",
        "eligibility": ["Men: 18+"],
        "documents": ["ID", "VL"],
        "address": "3211 Irving Blvd, Dallas, TX 75247",
        "phone": "214-637-6117",
        "intake": ["3pm - 5pm", "Daily at The Bridge Map: 30", "Free"],
         "programs": ["Clinic", "Job training", "Long-term discipleship", "Transitional housing", "Veteran programs", "Senior program", "Computer Aided Education", "Shelter"]]]

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return organizations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmergencyCell", for: indexPath)

        // Configure the cell...

        let label = cell.viewWithTag(3000) as! UILabel
        print(type(of: label))
        for i in 0...(organizations.count - 1) {
            if indexPath.row == i {
                label.text = organizations[i]["name"] as? String
                
                cell.accessoryType = .disclosureIndicator
            }
        }
        // End of new code block
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "specsh") as? SpecShel{
            vc.name = (organizations[indexPath.row]["name"] as? String)!
            
            for j in 0...(organizations[indexPath.row]["eligibility"] as! [String]).count-1 {
                if (organizations[indexPath.row]["eligibility"] as! [String]).count - 1 == j   {
                    vc.eli += (organizations[indexPath.row]["eligibility"] as! [String])[j]
                } else {
                    vc.eli += (organizations[indexPath.row]["eligibility"] as! [String])[j] + ",  "
                }
                
            }
            
            for j in 0...(organizations[indexPath.row]["documents"] as! [String]).count-1 {
                if (organizations[indexPath.row]["documents"] as! [String]).count - 1 == j   {
                    vc.doc += (organizations[indexPath.row]["documents"] as! [String])[j]
                } else {
                    vc.doc += (organizations[indexPath.row]["documents"] as! [String])[j] + ",  "
                }
                
            }
            
            vc.ad = (organizations[indexPath.row]["address"] as? String)!
            vc.phon = (organizations[indexPath.row]["phone"] as? String)!
            
            
            for j in 0...(organizations[indexPath.row]["intake"] as! [String]).count-1 {
                if (organizations[indexPath.row]["intake"] as! [String]).count - 1 == j   {
                    vc.intak += (organizations[indexPath.row]["intake"] as! [String])[j]
                } else {
                    vc.intak += (organizations[indexPath.row]["intake"] as! [String])[j] + ",  "
                }
                
            }
            for j in 0...(organizations[indexPath.row]["programs"] as! [String]).count-1 {
                if (organizations[indexPath.row]["programs"] as! [String]).count - 1 == j   {
                    vc.program += (organizations[indexPath.row]["programs"] as! [String])[j]
                } else {
                    vc.program += (organizations[indexPath.row]["programs"] as! [String])[j] + ",  "
                }
                
            }
//            vc.doc = organizations[indexPath.row]["documents"] as! String
//            vc.ad = organizations[indexPath.row]["address"] as! String
//            vc.phon = organizations[indexPath.row]["phone"] as! String
//            vc.intak = organizations[indexPath.row]["intake"] as! String
//            vc.program = organizations[indexPath.row]["programs"] as! String
            
            
            self.navigationController?.pushViewController((vc), animated: true)
        }
    }
    
    
}

class SpecShel: UIViewController {

    @IBOutlet var Header: UILabel!
    @IBOutlet var elig: UILabel!
    @IBOutlet var docs: UILabel!
    @IBOutlet var adi: UILabel!
    @IBOutlet var phone: UILabel!
    @IBOutlet var intake: UILabel!
    @IBOutlet var programs: UILabel!
    
    var name = ""
    var eli = ""
    var doc = ""
    var ad = ""
    var phon = ""
    var intak = ""
    var program = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Header.text = name
        elig.text = eli
        docs.text = doc
        adi.text = ad
        phone.text = phon
        intake.text = intak
        programs.text = program
    }
}

//
//  HousingQuestionsViewController.swift
//  Student Central
//
//  Created by Riva Mathur on 12/2/22.
//

import UIKit

class HousingTableView: UITableViewController {
    
    let housing = [
        ["name": "Market Rate Single Housing", "whoFor": "Those With Stable Income", "payment": "Self Pay", "moreInfo": "Inquire At Property Or Apartment Locator"],
        ["name": "Market Rate Shared Housing", "whoFor": "Friends With Stable Income", "payment": "Shared Pay With A Friend", "moreInfo": "Inquire At Property Or Apartment Locator"],
        ["name": "Rapid Rehousing", "whoFor": "Newly Homeless + Moderate, Mental, Physical, Or Substance Abuse", "payment": "Stable Income + Subsidized Assistance", "moreInfo": "Documentation of homelessness and housing priority list at Austin Street, The Bridge, City Square, Dallas Life, Family Gateway, Housing Crisis Center, or Office of Homeless Solutions Outreach"],
        ["name": "Subsidized Permanent Housing", "whoFor": "Low Income (Below 50% Median)", "payment": "Steady Income + Section 8, Project Based, Or Public Housing", "moreInfo": "Documentation of homelessness and housing priority list at Austin Street, The Bridge, City Square, Dallas Life, Family Gateway, Housing Crisis Center, or Office of Homeless Solutions Outreach"],
        ["name": "Permanent Supportive Housing", "whoFor": "Chronic Homeless With Mental, Physical, Or Substance Abuse", "payment": "Section 8 Voucher And Or Income", "moreInfo": "Documentation of homelessness and housing priority list at Austin Street, The Bridge, City Square, Dallas Life, Family Gateway, Housing Crisis Center, or Office of Homeless Solutions Outreach"],
        ["name": "Sober Living Homes", "whoFor": "Intensive Peer Recovery Support", "payment": "SSI/SSDI Income Or Medicaid/Medicare", "moreInfo": "Oxford/Angel Homes"],
         ["name": "Supported Group Living", "whoFor": "Peer Recovery Support", "payment": "SSI/SSDI Income", "moreInfo": "Licensed Boarding Homes Thru Boardinghome.Org"],
         ["name": "Senior Living", "whoFor": "65+ With Health Issues", "payment": "Income At 2-3x Rent", "moreInfo": "Apply at facility"],
         ["name": "Assisted Living", "whoFor": "Medical Support", "payment": "Income + Medicaid", "moreInfo": "Apply at facility"],
         ["name": "Nursing Home", "whoFor": "Severe Medical Needs", "payment": "Income + Medicaid", "moreInfo": "Ask insurance"]
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
          // #warning Incomplete implementation, return the number of sections
          return 1
      }
   
      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          // #warning Incomplete implementation, return the number of rows
          return housing.count
      }
      
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "EmergencyCell", for: indexPath)
   
          // Configure the cell...
          let labeltype = type(of: cell.viewWithTag(9876))
          print(labeltype)
          let label = cell.viewWithTag(9876) as! UILabel
          
          for i in 0...(housing.count - 1) {
              if indexPath.row == i {
                  label.text = housing[i]["name"]
                  
                  cell.accessoryType = .disclosureIndicator
              }
          }
          // End of new code block
          return cell
      }

   
    override func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "housinginfo") as? HousingViewController{
            vc.name = (housing[indexPath.row]["name"])!
            vc.whoFor = (housing[indexPath.row]["whoFor"])!
            vc.payment = (housing[indexPath.row]["payment"])!
            vc.moreInfo = (housing[indexPath.row]["moreInfo"])!
                  
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
            
class HousingViewController: UIViewController {
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    
    var name = ""
    var whoFor = ""
    var payment = ""
    var moreInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resNameLabel.text = name
        resCatLabel.text = whoFor
        resContLabel.text = payment
        resAddressLabel.text = moreInfo
        
    }

}




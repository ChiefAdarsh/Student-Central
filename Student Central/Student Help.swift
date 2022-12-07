//
//  resourcesTableViewController.swift
//  resources
//
//  Created by Adarsh Goura on 11/4/22.
//

import UIKit

//struct Resource {
//    var category: String
//    var name: String
//    var contact: String
//    var address: String
//    var city: String
//    var state: String
//    var zip: String
//    var website: String
//    var addInfo: String
//}

/*struct categorySection {
    var categoryType: String
    var resources: [Resource]
}*/

//fileprivate func categoryType()

var myIndex = 0
var count = 0
var counter = 0
var tempArrayLength = 0
var mySection = 0
class resourcesCrisisViewController: UITableViewController {
    var backTitle: String!
    var resources = [
        [Resource(category: "Crisis Lines", name: "Child Protective Services", contact: "1-800-252-5400", address: "", city: "", state: "", zip: "", website: "", addInfo: "Texas law says anyone who thinks a child, or person 65 years or older, or an adult with disabilities is being abused, neglected, or exploited must report it to DFPS. A person who reports abuse in good faith is immune from civil or criminal liability"),
        Resource(category: "Crisis Lines", name: "National Suicide Prevention Lifeline", contact: "Call or text 988 or 1-800-273-8255", address: "", city: "", state: "", zip: "", website: "https://suicidepreventionlifeline.org/", addInfo: "24/7 free, confidential support for anyone in distress; Prevention and crisis resources for you or loved ones"),
        Resource(category: "Crisis Lines", name: "Crisis Text Line", contact: "Text ‘HELLO’ to 741741 ", address: "", city: "", state: "", zip: "", website: "", addInfo: ""),
        Resource(category: "Crisis Lines", name: "Suicide Crisis Center of North Texas", contact: "214-828-1000", address: "", city: "", state: "", zip: "", website: "", addInfo: "Suicide and Crisis Hotline; Available 24/7 for anyone in crisis or contemplating suicide; Programs for those who have lost a loved one to suicide (free); Teen Programs (TeenScreen) (free)"),
        Resource(category: "Crisis Lines", name: "Texas Youth and Runaway Hotline", contact: "Hotline: 1-800-989-6884; Texting - 512-872-5777; Chat - texasyouth.org", address: "", city: "", state: "", zip: "", website: "texasyouth.org", addInfo: "Individuals can call, chat or text; Crisis Intervention; Referrals for callers who need shelter, counseling, and transportation home; A confidential message relay service is available to promote communications between runaways and their families"),
        Resource(category: "Crisis Lines", name: "Love is Respect", contact: "Hotline: 1-866-331-9474; Texting - love is to 22522; Chat - loveisrespect.org", address: "", city: "", state: "", zip: "", website: "loveisrespect.org", addInfo: "24 hour web based and telephone helpline from National Domestic Violence Hotline; Created to help teens (ages 13-18) to prevent and end dating abuse"),
        Resource(category: "Crisis Lines", name: "The Trevor Project", contact: "1-866-488-7386", address: "", city: "", state: "", zip: "", website: "thetrevorproject.org", addInfo: "Hotline 24/7; Individuals can call, chat, or text; Crisis Intervention and suicide prevention services for lesbian, gay, bisexual, transgender and questioning (LGBTQ) youth under age 25"),
        Resource(category: "Crisis Lines", name: "Here for Texas", contact: "972-525-8181", address: "", city: "", state: "", zip: "", website: "www.herefortexas.com", addInfo: "Free Service; Connects individuals to a trained mental health navigator who can offer support and information about mental health services in our area; Resources are available for anxiety, depression, bipolar, addictions, and other mental health conditions; Helps with transportation to the mental health facility")],
    ]
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        Dictionary(grouping: self.resources) { (resources) -> String in
            return categorySection(resources.categoryType)
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = "Resources"
        
//        if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
//            let viewController = ctrs[ctrs.count - 2] as! BackTitle
//            let backButton = UIBarButtonItem()
//            backButton.title = viewController.backTitle
//            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return resources.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resources[section].count
        //count = 0
        /*if counter != 0 {
            count = tempArray.count
        }
        counter += 1*/
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)

        // Configure the cell...
        
        //let resource = resources[indexPath.row]
        let resource = resources[indexPath.section][indexPath.row]
        cell.textLabel?.text = resource.name

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //let categoryArray = ["Crisis Lines", "Inpatient/Outpatient Mental Health Facilities", "Counseling Centers", "Eating Disorders", "Drug and Alcohol Abuse", "Specialty Counseling"]
        return ""
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mySection = indexPath.section
        //performSegue(withIdentifier: "resIden", sender: self)
        
        
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
class resourcesInOutViewController: UITableViewController {
    var backTitle: String!
    var resources = [
        [Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Carrollton Springs", contact: "972-544-7980", address: "2225 Parker Road", city: "Carrollton", state: "Texas", zip: "75010", website: "https://carrolltonsprings.com/programs/inpatient-treatment/", addInfo: "Offers telehealth; Focus: Offers inpatient mental health treatment; Cost: Accepts most major insurance plans"),
        Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Carrollton Springs Changes ", contact: "469-850-2040", address: "6870 Lebanon Road, Suite 300", city: "Frisco", state: "Texas", zip: "75034", website: "https://carrolltonsprings.com/locations/frisco-tx/", addInfo: "Offers telehealth; Focus: Offers mental health treatment on an outpatient basis through PHP and IOP; Ages: Serves children and adolescents ages 11-18; Cost: Accepts most major insurance plans"),
        Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Charles E. Seay Behavioral Health Center", contact: "682-549-7934 ", address: "6110 W. Parker Road", city: "Plano", state: "Texas", zip: "75093", website: "www.texashealth.org", addInfo: "8 a.m. to 8 p.m; After hours emergency; Mental Health Facility; Focus: mental health, drug and alcohol issues. Offers inpatient, PHP and IOP; Age: Adolescents 12-17. Adults 18 and older will be referred to the adult unit. Children 11 and under will be referred to Children’s Health; Insurance: Approved provider for most major care insurance plans. Contact to see if they accept your insurance plan."),
        Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Children’s Health (formerly Children’s Medical Center)", contact: "Intake number/mental health issues: 214-456-8899; Children’s Outpatient Psychiatry Clinic:  214-456-5937; Children’s Emergency Room:  214-456-7000", address: "1935 Medical District Drive", city: "Dallas", state: "Texas", zip: "75235", website: "www.childrens.com", addInfo: "Focus: mental health issues, both inpatient and outpatient; Age: children & adolescents up to age 17; Insurance: Variety of insurance companies (call to verify insurance); If a child is suicidal, they should be taken directly to the Emergency Room."),
        Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "The Excel Center Lewisville", contact: "972-906-5522", address: "190 Civic Center, Suite 170", city: "Lewisville", state: "Texas", zip: "75067", website: "www.excelcenterlewisville.com", addInfo: "Focus: specialized day treatment specializing in anger, depression, ADHD and mood disorders; offer Dialectical; Behavior Therapy, EMDR and TBRI; Age: children and adolescents (5-18); Free Assessments; A TEA accredited school is located on campus; Offer transportation options; Insurance: Many major insurance providers. Call to confirm."),
        Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Parkland Hospital (Behavioral Health Center)", contact: "214-590-5536", address: "6300 Harry Hines, 7th floor", city: "Dallas", state: "Texas", zip: "75235", website: "www.parklandhospital.com", addInfo: "Focus: wide range of mental health services (therapy, evaluations, neuropsychology); Age: children, adolescents, adults; Insurance: most major insurance providers, Medicare, and Medicaid. They help patients find financial assistance."),
        Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "SPARC at Children’s (Suicide Prevent and Resilience at Children’s Health)", contact: "214-456-3600", address: "6300 Harry Hines Blvd., Suite 1200", city: "Dallas", state: "Texas", zip: "75235", website: "https://www.childrens.com/specialties-services/specialty-centers-and-programs/psychiatry-and-psychology/conditions-and-programs/suicide-behaviors", addInfo: "The program is for adolescents, who: Are between 12-17 years old, have made a suicide attempt or have significant worsening of suicidal thoughts, require more intensive care than available through outpatient services, are able to attend six to nine hours of treatment each week, are seeing a psychiatrist or therapist. (Assistance in locating these services will be provided.); Current treatment providers and parents can refer adolescents to this program.; Insurance: Many major insurance providers. Call to see options. "),
        Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "University Behavioral Health", contact: "940-320-8100", address: "2026 W. University Dr.", city: "Denton", state: "Texas", zip: "76201", website: "www.ubhdenton.com", addInfo: "24/7 Assessments; Focus: mental health and substance abuse issues; Age: children (5-12 years old), adolescents (13-17 years old) and adults; Insurance: Accepts most major insurances.  They cannot take North Star.; Contact UBH to see if they accept your insurance.")],
    ]
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        Dictionary(grouping: self.resources) { (resources) -> String in
            return categorySection(resources.categoryType)
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = "Resources"
        
//        if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
//            let viewController = ctrs[ctrs.count - 2] as! BackTitle
//            let backButton = UIBarButtonItem()
//            backButton.title = viewController.backTitle
//            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return resources.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resources[section].count
        //count = 0
        /*if counter != 0 {
            count = tempArray.count
        }
        counter += 1*/
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)

        // Configure the cell...
        
        //let resource = resources[indexPath.row]
        let resource = resources[indexPath.section][indexPath.row]
        cell.textLabel?.text = resource.name

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //let categoryArray = ["Crisis Lines", "Inpatient/Outpatient Mental Health Facilities", "Counseling Centers", "Eating Disorders", "Drug and Alcohol Abuse", "Specialty Counseling"]
        return ""
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mySection = indexPath.section
        //performSegue(withIdentifier: "resIden", sender: self)
        
        
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
class resourcesCounselingViewController: UITableViewController {
    var backTitle: String!
    var resources = [
        [Resource(category: "Counseling Centers", name: "Coppell Counseling Center", contact: "972-393-1596", address: "413 W. Bethel Road, Suite 100", city: "Coppell", state: "Texas", zip: "75019", website: "www.coppellcounseling.com", addInfo: "A suite of independent licensed mental health practitioners; Coppell Counseling Center mental health professionals participate in many preferred provider organizations.  "),
        Resource(category: "Counseling Centers", name: "Dallas DBT", contact: "972-918-0170", address: "9900 North Central Expressway, Suite 500", city: "Dallas", state: "Texas", zip: "75231", website: "www.dallasdbt.com", addInfo: "Offers tele-health; Focus: Team of clinicians practicing dialectical behavioral therapy through individual therapy, skills groups, coaching calls, and clinician consultations; Age: Children, adolescents, adults, and families; Insurance: They do not accept insurance. See website for rates.  "),
        Resource(category: "Counseling Centers", name: "Family Tree", contact: "972-353-9404; 888-837-0666, ext. 7 (Dallas County)", address: "2727 LBJ Freeway, Suite 406", city: "Farmers Branch", state: "Texas", zip: "75234", website: "www.familytreeprogram.org", addInfo: "Offers tele-health; Family counseling at no cost.; Spanish speaking available; Families are usually eligible if they have a youth 17 or younger in the home, they currently are not receiving services from CPS, and the youth has never been adjudicated of a crime.; Presenting issues can be served in the short term services provided."),
        Resource(category: "Counseling Centers", name: "Holiner Psychiatric Group", contact: "972-566-4591", address: "7777 Forest Lane, Building C, Suite 833", city: "Dallas", state: "Texas", zip: "75230", website: "www.holinergroup.com", addInfo: "Offers tele-health; Offers tele-health; Focus: A full service practice committed to providing high quality psychiatric services.; Age: Children, adolescents and adults.; Insurance: See their website for a list of insurance companies or call to verify.; They accept Medicare, Value Options."),
        Resource(category: "Counseling Centers", name: "Innovation 360", contact: "214-733-9565", address: "6600 LBJ Freeway, Suite 240", city: "Dallas", state: "Texas", zip: "75240", website: "www.i360dallas.com", addInfo: "Focus: A team of certified doctors, psychologists and licensed counselors specializing in mental health treatment, addiction and emerging adulthood.; Age: Teens and adults.; Insurance: They do not accept insurance."),
        Resource(category: "Counseling Centers", name: "Psychological Services of North Texas", contact: "817-416-7169", address: "7135 Colleyville Blvd., Suite 101", city: "Colleyville", state: "Texas", zip: "76034", website: "www.psntdocs.com", addInfo: "Focus: Psychological testing and therapy for anxiety, depression/mood disorders, eating disorders, LGBTQ, parenting, physical health, relationships, sports counseling, and trauma; Dr. Kathleen Nadelson:        Focus: Psychological testing and therapy;        Ages: Children to adults; Insurance: They accept many major insurance groups, Medicare, Medicaid, and offer sliding-scale fees."),
        Resource(category: "Counseling Centers", name: "Richland Oaks Counseling Center", contact: "469-619-7622", address: "1221 Abrams Rd., Suite 325", city: "Richardson", state: "Texas", zip: "75081", website: "www.richlandoaks.org", addInfo: "Offers tele-health; A nonprofit teaching and research clinic with locations in Richardson, Plano, McKinney and Prosper; Full range of counseling services and psychological assessment; Bilingual services in: Spanish, Urdu, Punjabi, Hindi, and conversational ASL; Insurance: They accept many major insurance groups, including Medicare. Call for availability."),
        Resource(category: "Counseling Centers", name: "SMU Center for Family Counseling", contact: "214-768-6789", address: "6116 N. Central Expressway #410", city: "Dallas", state: "Texas", zip: "75206", website: "www.smu.com/familycounseling", addInfo: "In-person and telehealth low-cost counseling for children, adolescents and families; Monday through Thursday from 11:30am-7:30pm"),
        Resource(category: "Counseling Centers", name: "Taylor Counseling Group", contact: "214-530-0021", address: "870 S. Denton Tap Road, Suite 150", city: "Coppell", state: "Texas", zip: "75019", website: "taylorcounselinggroup.com", addInfo: "Offers tele-health; Practice of clinicians that provide individual, family and play therapy for ages 5-adult; Insurance: They are in-network with most major insurance groups. They also offer an affordable care program for reduced fees."),
        Resource(category: "Counseling Centers", name: "University Of North Texas - Counseling and Human Development Center", contact: "940-565-2970", address: "425 S. Welch Street", city: "Denton", state: "Texas", zip: "76203-5017", website: "www.coe.unt.edu/counseling-and-human-development-center", addInfo: "Focus: individual adult/adolescent counseling, career counseling, couples counseling and play therapy provided by advanced masters or beginning doctoral students in professional counseling.; Insurance: They do not accept insurance, Medicaid, or Medicare.; Cost: Sliding fee scales; they do not refuse services for inability to pay.")],
    ]
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        Dictionary(grouping: self.resources) { (resources) -> String in
            return categorySection(resources.categoryType)
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = "Resources"
        
//        if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
//            let viewController = ctrs[ctrs.count - 2] as! BackTitle
//            let backButton = UIBarButtonItem()
//            backButton.title = viewController.backTitle
//            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return resources.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resources[section].count
        //count = 0
        /*if counter != 0 {
            count = tempArray.count
        }
        counter += 1*/
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)

        // Configure the cell...
        
        //let resource = resources[indexPath.row]
        let resource = resources[indexPath.section][indexPath.row]
        cell.textLabel?.text = resource.name

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //let categoryArray = ["Crisis Lines", "Inpatient/Outpatient Mental Health Facilities", "Counseling Centers", "Eating Disorders", "Drug and Alcohol Abuse", "Specialty Counseling"]
        return ""
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mySection = indexPath.section
        //performSegue(withIdentifier: "resIden", sender: self)
        
        
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
class resourcesEatingDisorderViewController: UITableViewController {
    var backTitle: String!
    var resources = [
        [Resource(category: "Eating Disorders", name: "Center for Discovery", contact: "1-855-257-4977", address: "5124 Corinthian Bay Drive", city: "Plano", state: "Texas", zip: "75093", website: "https://centerfordiscovery.com/locations/plano/", addInfo: "Focus: Whole person treatment center for males and females who have been diagnosed with an eating disorder; Age: Children and adolescents, age 10-28; Insurance: Accepts most major insurance plans"),
        Resource(category: "Eating Disorders", name: "Children’s Health (Specialty Center 1 Plano)", contact: "469-303-5900; 214-456-8899, option 3 (Eating Disorders New Patient)", address: "7609 Preston Road", city: "Plano", state: "Texas", zip: "75024", website: "www.childrens.com", addInfo: "Focus: Children’s offers a full continuum of specialized services for children and adolescents with eating disorders (male and female). ; Age: Children and adolescents - the only facility in North Texas that offers services for children under 12.; Insurance: Call Children’s to see if they accept your insurance provider."),
        Resource(category: "Eating Disorders", name: "Eating Recovery Center-Dallas", contact: "972-833-2828", address: "5120 Legacy Drive", city: "Plano", state: "Texas", zip: "75024", website: "www.dallas.eatingrecoverycenter.com", addInfo: "Focus: Accredited center for eating disorders treatment and prevention. They serve female and males, adults, children, and adolescents with Anorexia, Bulimia, Binge, Eating Disorders and co-occurring disorders.; They offer inpatient, residential, partial hospitalization and IOP treatment.; Families are involved in the treatment process.; Age: Children must be at least 10 years old.; Insurance: Accept many major insurance companies, however the list changes frequently.  Accepts Value Options. Call insurance and financial specialists for a benefits check. "),
        Resource(category: "Eating Disorders", name: "Elisa Project", contact: "866-837-1999; 214-369-5222", address: "10300 N. Central Expressway, #330", city: "Dallas", state: "Texas", zip: "75231", website: "www.theelisaproject.org", addInfo: "Focus: Fighting against eating disorders through education, support, and advocacy.  The ELISA project is not a treatment center; Connect families and individuals with resources.; Age: Resources for all ages, from young children to adults.; Cost: Free of charge"),
        Resource(category: "Eating Disorders", name: "Walker Wellness", contact: "(214) 549-2901", address: "12200 Preston Road", city: "Dallas", state: "Texas", zip: "75230", website: "www.walkerwellness.com", addInfo: "Focus: Individualized treatment plan to help men, women, and adolescents who are dealing with eating disorders and body image issues, depression, anxiety, obsessive-compulsive disorders. They offer day program, intensive outpatient, and standard outpatient treatment options.; Age: Adolescents 12 and older and Adults; Insurance: They do not accept insurance.")],
    ]
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        Dictionary(grouping: self.resources) { (resources) -> String in
            return categorySection(resources.categoryType)
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = "Resources"
        
//        if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
//            let viewController = ctrs[ctrs.count - 2] as! BackTitle
//            let backButton = UIBarButtonItem()
//            backButton.title = viewController.backTitle
//            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return resources.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resources[section].count
        //count = 0
        /*if counter != 0 {
            count = tempArray.count
        }
        counter += 1*/
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)

        // Configure the cell...
        
        //let resource = resources[indexPath.row]
        let resource = resources[indexPath.section][indexPath.row]
        cell.textLabel?.text = resource.name

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //let categoryArray = ["Crisis Lines", "Inpatient/Outpatient Mental Health Facilities", "Counseling Centers", "Eating Disorders", "Drug and Alcohol Abuse", "Specialty Counseling"]
        return ""
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mySection = indexPath.section
        //performSegue(withIdentifier: "resIden", sender: self)
        
        
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
class resourcesAlchoholViewController: UITableViewController {
    var backTitle: String!
    var resources = [
        [Resource(category: "Drug and Alcohol Abuse", name: "Hazelden Betty Ford Foundation", contact: "1-800-257-7810", address: "", city: "", state: "Texas", zip: "", website: "https://hazelden.org", addInfo: "Drug addiction treatment provider with 17 sites nationwide; Website offers valuable information on addiction for individuals and families.; Online bookstore."),
        Resource(category: "Drug and Alcohol Abuse", name: "Adolescent Drug and Alcohol Assessments - Solutions Outpatient Services", contact: "214-369-1155", address: "4300 MacArthur Avenue, Suite 270", city: "Dallas", state: "Texas", zip: "75209", website: "www.sosdallas.com", addInfo: "Provides comprehensive substance abuse/dependence evaluations for adolescents and adults; They offer an alcohol, drug abuse, and separate eating disorder intensive outpatient treatment program for adults."),
        Resource(category: "Drug and Alcohol Abuse", name: "Adolescent Drug and Alcohol Assessments - Dallas Recovery Center", contact: "214-789-8456", address: "4950 Keller Springs Rd., Suite 180", city: "Addison", state: "Texas", zip: "75001", website: "https://jimsavage.net/counseling-services/assessment.html", addInfo: "Jim Savage, LCDC, owner and therapist; Adolescent assessment (prevention and intervention); Counseling services, parent seminars and aftercare support.; Insurance is not accepted."),
        Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - Capstone Treatment Center", contact: "866-729-4479", address: "120 Meghan Lane", city: "Judsonia", state: "Arizona", zip: "72081", website: "www.capstonetreatmentcenter.com", addInfo: "Focus: Behavioral Health system based on a Christian foundation which emphasizes on addiction, trauma, family conflict, and co-occurring disorders.; Age: A residential programs that works with adolescent and young adult males; Insurance: Reimbursement only"),
        Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - Memorial Hermann Houston", contact: "713-939-7272", address: "3043 Gessner Road", city: "Houston", state: "Texas", zip: "77080", website: "parc.memorialhermann.org", addInfo: "Focus: Hospital based program for substance abuse treatment for people who are struggling with addiction. They offer residential treatment, partial hospitalization, intensive outpatient, aftercare programs, and family rehab.; Age: Teens (13-17), Young Adults (18-24), and Adults (25+); Several layers of care; Insurance: Accept most major insurances but do not accept Medicare, Medicaid, Tricare, Amerigroup, STAR, CHIP"),
        Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - NEXUS Recovery Center", contact: "214-321-0156 X 3118", address: "8733 LaPrada Dr.", city: "Dallas", state: "Texas", zip: "75228", website: "www.nexusrecovery.org", addInfo: "Focus: Substance abuse services for teenage girls and adult women. The only drug treatment facility in Texas that accommodates a late term pregnancy or a newly parenting teen.; Allows women 18 and older to bring as many as 3 children.; Age: Girls 13-17, Women; Insurance: Many insurance plans are accepted."),
        Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - Sundown Ranch", contact: "903-479-3933", address: "3120 VZ County Rd. 2318", city: "Canton", state: "Texas", zip: "75103", website: "https://sundownranchinc.com", addInfo: "Focus: Treats adolescents and young adults suffering from substance abuse disorder or chemical dependency through residential treatment, aftercare planning and an academic program.; Age: 12-24; Insurance: Many major insurances accepted. Call to verify. "),
        Resource(category: "Drug and Alcohol Abuse", name: "Timberline Knolls", contact: "855-254-8326", address: "40 Timberline Drive", city: "Lemont", state: "Illinois", zip: "60439", website: "www.timberlineknolls.com", addInfo: "Focus: Residential treatment center with a focus on eating disorders, substance abuse and addiction, mood disorders and trauma.; Age: Females 12 and older; Insurance: Many major insurances accepted.")],
    ]
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        Dictionary(grouping: self.resources) { (resources) -> String in
            return categorySection(resources.categoryType)
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = "Resources"
        
//        if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
//            let viewController = ctrs[ctrs.count - 2] as! BackTitle
//            let backButton = UIBarButtonItem()
//            backButton.title = viewController.backTitle
//            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return resources.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resources[section].count
        //count = 0
        /*if counter != 0 {
            count = tempArray.count
        }
        counter += 1*/
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)

        // Configure the cell...
        
        //let resource = resources[indexPath.row]
        let resource = resources[indexPath.section][indexPath.row]
        cell.textLabel?.text = resource.name

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //let categoryArray = ["Crisis Lines", "Inpatient/Outpatient Mental Health Facilities", "Counseling Centers", "Eating Disorders", "Drug and Alcohol Abuse", "Specialty Counseling"]
        return ""
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mySection = indexPath.section
        //performSegue(withIdentifier: "resIden", sender: self)
        
        
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
class resourcesSpecialtyViewController: UITableViewController {
    var backTitle: String!
    var resources = [
        [Resource(category: "Specialty Counseling", name: "Art Therapy - The Art Station", contact: "817-921-2401", address: "1616 Park Place", city: "Fort Worth", state: "Texas", zip: "76110", website: "www.theartstation.org", addInfo: "Focus: Individual and group art therapy including assessments.; Clients:  Young children to adults; Insurance: Accept some insurance plans and may provide financial assistance.; Usually a waiting list."),
         Resource(category: "Specialty Counseling", name: "Creative Activities, Sandbox Therapy and Expressive Arts Therapy - Justin Bayles, LPC", contact: "580-889-0684", address: "598 S. Denton Tap Road, Suite 106", city: "Coppell", state: "Texas", zip: "75019", website: "", addInfo: "Focus: Sand Play Therapy, Jung-based, Cams-care (evidence based therapeutic framework for suicide-specific assessment and treatment of patients’ suicide risk); Age: 10 and up; Insurance: Does not accept insurance.; Evening and Saturday appointments"),
         Resource(category: "Specialty Counseling", name: "Creative Activities, Sandbox Therapy and Expressive Arts Therapy - Stephanie Coker", contact: "972-318-9272", address: "5168 Village Creek Dr., Ste 200", city: "Plano", state: "Texas", zip: "75093", website: "www.cokercounseling.com", addInfo: "Focus: Uses active teaching, role playing and creative activities to engage in meaningful, positive experiences that encourage change. Individual & family therapy; Age: Individual Therapy (Adolescent, Adult); Insurance: Does not accept insurance."),
         Resource(category: "Specialty Counseling", name: "Creative Activities, Sandbox Therapy and Expressive Arts Therapy - Dr. Kelly Webb Ferebee", contact: "972-754-1584", address: "598 S. Denton Tap Road, Suite 106", city: "Coppell", state: "Texas", zip: "75019", website: "www.kellywebbferebee.com", addInfo: "Focus: Expressive Art Therapy, Play Therapy, Individual Therapy (Adult, Adolescent, Child), Family Therapy, grief therapy; Age: Children-Adults (depending on modality); Insurance: Does not take insurance"),
         Resource(category: "Specialty Counseling", name: "Cultural Diversity:  India - Jessy Chatha, LCSW", contact: "972-393-1596; jessychatha@gmail.com", address: "413 W. Bethel Rd., Suite 100", city: "Coppell", state: "Texas", zip: "75019", website: "www.coppellcounseling.com", addInfo: "Focus: Individual, Family, and Group Therapy; Age: Child, Adolescent and Adult Services; Insurance: Contracts with some insurance companies"),
         Resource(category: "Specialty Counseling", name: "Equine Therapy - Sara Willerson – Horses, Heart & Soul", contact: "214-596-8300", address: "PO Box 1353", city: "Little Elm", state: "Texas", zip: "75068", website: "http://horsesheartandsoul.com", addInfo: "All sessions located at WolfTree Ranch, Pilot Point, TX; Focus: Equine facilitated psychotherapy and experiential learning focusing on self-awareness, social skills, and relationship building; Group sessions, workshops, team building; Age: Individual (children, teens, adult) sessions; Insurance: Does not take insurance"),
         Resource(category: "Specialty Counseling", name: "Gaming Addiction Counselors - Bruce Cameron", contact: "214-431-2032", address: "515 W. Southlake Blvd. Suite 172", city: "Southlake", state: "Texas", zip: "76092", website: "www.cameronlpc.com", addInfo: "Does not take insurance"),
         Resource(category: "Specialty Counseling", name: "Gaming Addiction Counselors - Mary Sanger - Insights Collaborative Therapy", contact: "214-706-0508", address: "5445 La Sierra Dr., Suite 204", city: "Dallas", state: "Texas", zip: "75231", website: "www.insightstherapy.com", addInfo: "Does not take insurance"),
         Resource(category: "Specialty Counseling", name: "Grief Therapy - El Tesoro de la Vida Grief Camp - Camp Fire First Texas", contact: "817-831-2111", address: "2700 Meacham Blvd.", city: "Fort Worth", state: "Texas", zip: "76132", website: "www.CampElTesoro.org", addInfo: "A week long camp, in the summer, for girls and boys, 6-17 years old, who have experienced a death of a loved one; Campers participate in traditional camp activities as well as work through the natural grieving process; There is an application process that usually begins in February; There is a fee and financial assistance for those who qualify; Camp is located near Granbury, Texas."),
         Resource(category: "Specialty Counseling", name: "Grief Therapy - Janet Dougherty, MS, LPC", contact: "214-538-4532", address: "907 W. Main Street", city: "Lewisville", state: "Texas", zip: "75067", website: "Jdoughertycounseling.com", addInfo: "Works with 12 year olds to adults; Takes Blue Cross, Blue Shield, Cigna Insurance"),
         Resource(category: "Specialty Counseling", name: "Grief Therapy - Reni Parker, LPC-S, RPT-S", contact: "469-583-1492", address: "10317 Sao Paulo Road", city: "Frisco", state: "Texas", zip: "75035", website: "www.myguidinglightcounseling.com", addInfo: "Specializes in grief counseling; Works with individuals who have been diagnosed with cancer and ALS and their families; Age: children, teens, adults, and seniors; Accepts many insurance plans. See website for more details."),
         Resource(category: "Specialty Counseling", name: "LGBTQ/TRANSGENDER YOUTH - Kim Hatley, M.Ed., LPC, LMFT - Coppell Counseling Center", contact: "972-393-1596 X 31", address: "413 West Bethel Rd. Suite 100", city: "Coppell", state: "Texas", zip: "75019", website: "", addInfo: "Focus: Experienced counselor in LGBTQ/Transgender issues. Works with individuals, couples and families. Co-founder of Coppell Counseling; Age: Teens and older; Insurance: Contracts with Cigna"),
         Resource(category: "Specialty Counseling", name: "LGBTQ/TRANSGENDER YOUTH - Youth First - Resource Center Community Center", contact: "214-540-4471", address: "5750 Cedar Springs Rd", city: "Dallas", state: "Texas", zip: "75235", website: "www.myresourcecenter.org/youth", addInfo: "Focus: Counseling services are in partnership with SMU. Provide parent support, educational programs, and recreational activities; Age: Counseling is available for teens in either individual, group or family settings; Insurance: Payment is sliding scale."),
         Resource(category: "Specialty Counseling", name: "LGBTQ/TRANSGENDER YOUTH - Dallas Hope Charities", contact: "", address: "PO Box 196006", city: "Dallas", state: "Texas", zip: "75219", website: "https://www.dallashopecharities.org", addInfo: "Focus: Provide services to LGBTQ+ youth; Age: 18-24 years old; Insurance: Non profit"),
         Resource(category: "Specialty Counseling", name: "Self-Injury - Lori Vann, M.A., LPC-S", contact: "214-270-6966", address: "2785 Rockbrook Drive, Suite 306", city: "Lewisville", state: "Texas", zip: "75067", website: "www.lorivanncounseling.com", addInfo: "Focus: Specializes in teen self-injury and works with parents. Also specializes in setting boundaries, assertiveness, self-esteem and anxiety issues. Offers individual, pre-marital, and family counseling; Age: 8 and older; Interns will see ages 6 and above; Insurance: Reduced fees for counseling with interns, under her supervision"),
         Resource(category: "Specialty Counseling", name: "Trauma and Abuse - Dr. Ron Garber", contact: "972-393-1596 X29", address: "413 W. Bethel Road, Suite 100", city: "Coppell", state: "Texas", zip: "75019", website: "www.coppellcounseling.com", addInfo: "Specializes in working with survivors of trauma and abuse; Works with adolescents, families and adults; Psychologist and Marriage and Family Therapist; Take the following insurance:  Cigna, PHCS, Value Options, Interface EAP, Medicare and Motorola")],
    ]
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        Dictionary(grouping: self.resources) { (resources) -> String in
            return categorySection(resources.categoryType)
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = "Resources"
        
//        if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
//            let viewController = ctrs[ctrs.count - 2] as! BackTitle
//            let backButton = UIBarButtonItem()
//            backButton.title = viewController.backTitle
//            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return resources.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resources[section].count
        //count = 0
        /*if counter != 0 {
            count = tempArray.count
        }
        counter += 1*/
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)

        // Configure the cell...
        
        //let resource = resources[indexPath.row]
        let resource = resources[indexPath.section][indexPath.row]
        cell.textLabel?.text = resource.name

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //let categoryArray = ["Crisis Lines", "Inpatient/Outpatient Mental Health Facilities", "Counseling Centers", "Eating Disorders", "Drug and Alcohol Abuse", "Specialty Counseling"]
        return ""
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mySection = indexPath.section
        //performSegue(withIdentifier: "resIden", sender: self)
        
        
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

class resourcesDomesticViolenceViewController: UITableViewController {
    var backTitle: String!
    var resources = [
        [Resource(category: "Domestic Violence", name: "Dallas Children’s Advocacy Center", contact: "214-818-2600", address: "5351 Samuell Blvd.", city: "Dallas", state: "Texas", zip: "75228", website: "www.dcac.org", addInfo: "Focus: Serves sexually abused children under age of 17. Multiple agency approach to the investigation, intervention and treatment of child sexual and physical abuse; Children are referred by CPS or law enforcement; They do not accept walk-ins but will help if someone can’t access services; Cost: No charge to clients."),
         Resource(category: "Domestic Violence", name: "Denton County Friends of the Family", contact: "24 Hour Crisis Line:  940-382-7273 or 800-572-4031", address: "4845 S. I-35 E, Suite 200", city: "Corinth", state: "Texas", zip: "76210", website: "www.dcfof.org", addInfo: "Focus: Serves those impacted by rape, sexual abuse and domestic violence, both witnesses and victims; Age: Children ages 3-17; Cost: No charge"),
         Resource(category: "Domestic Violence", name: "The Family Place", contact: "Main Phone Number:  214-559-2170 and 24 hour Crisis Hotline Number:  214-941-1991", address: "PO Box 7999", city: "Dallas", state: "Texas", zip: "75209", website: "www.familyplace.org", addInfo: "This organization provides everything family violence victims need to be safe. The services are free with the exception of Supervised Child Visitation and Battering Intervention and Prevention Program (BIPP). Services include 24-hour crisis hotline, children’s counseling, legal services, emergency shelter, incest recovery,, transitional housing, supervised child visitation, child development center, bettering intervention and prevention program (BIPP), community counseling, job readiness programs, and resale shop."),
         Resource(category: "Domestic Violence", name: "Genesis Women’s Shelter", contact: "214-389-7700 and 24 hour Hotline - 214-946-4357", address: "4411 Lemmon Ave., #201", city: "Dallas", state: "Texas", zip: "75219", website: "https://www.genesisshelter.org", addInfo: "This service is for women and children; All services are free; Services include 24 hour hotline, emergency shelter, transitional housing, counseling center, teen counseling, children’s play therapy, on site school, case management, parent classes, legal service, job readiness classes, and domestic violence education."),
         Resource(category: "Domestic Violence", name: "Irving Family Advocacy Center", contact: "972-721-6555", address: "600 W. Pioneer Dr.", city: "Irving", state: "Texas", zip: "75061", website: "www.cityofirving.org/984/Family-Advocacy-Center", addInfo: "Irving Family Advocacy Center provides free services and assistance to the residents of Irving; Services include counseling services ( 972-721-6555), bilingual services (972-721-6553), domestic violence counselor (972-721-6552), individual and family counseling, parenting classes, support groups, play therapy, information, referrals, safety planning, and legal and personal advocacy to victims of violent crimes."),
         Resource(category: "Domestic Violence", name: "Mosaic Family Service", contact: "214-821-5393 - 24 hour domestic violence and 214-823-4434 - 24 hour Crisis/Shelter Hotline and 214-823-1911 - 24 hour Trafficking Hotline", address: "4144 North Central Expressway, Suite 530", city: "Dallas", state: "Texas", zip: "74204", website: "www.mosaicservices.org", addInfo: "Mosaic is a safe haven for survivors of human rights abuses, including human trafficking and domestic violence.  Their mission is to support, educate and empower the multicultural individuals and families of North Texas.  All services are free. They offer support services in more than 25 languages; We serve trafficking survivors, family violence survivors, refugees; Our services include legal representation, shelter, counseling, client advocacy, community education. "),
         Resource(category: "Domestic Violence", name: "Texas Muslim Women’s Foundation", contact: "972-880-4192 - 24 hour hotline and 469-467-6241 - Office", address: "P.O. Box 863388", city: "Plano", state: "Texas", zip: "75086", website: "www.TMWF.org", addInfo: "Texas Muslim Women’s Foundation is a a 24-hour shelter for victims of family violence from all backgrounds. Their “Peace in the Home Social Services” and the “Peaceful Oasis Shelter” are the first and only comprehensive family violence programs in Texas that address the specific needs of the Muslim population.; Our services are free and confidential and can accommodate 14+ languages.; Our services include emergency hotline and shelter, case management, short-term financial assistance, job readiness, transitional housing, legal assistance, crisis counseling, and services for the elderly and disabled.")],
    ]
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        Dictionary(grouping: self.resources) { (resources) -> String in
            return categorySection(resources.categoryType)
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = "Resources"
        
//        if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
//            let viewController = ctrs[ctrs.count - 2] as! BackTitle
//            let backButton = UIBarButtonItem()
//            backButton.title = viewController.backTitle
//            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return resources.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resources[section].count
        //count = 0
        /*if counter != 0 {
            count = tempArray.count
        }
        counter += 1*/
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)

        // Configure the cell...
        
        //let resource = resources[indexPath.row]
        let resource = resources[indexPath.section][indexPath.row]
        cell.textLabel?.text = resource.name

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //let categoryArray = ["Crisis Lines", "Inpatient/Outpatient Mental Health Facilities", "Counseling Centers", "Eating Disorders", "Drug and Alcohol Abuse", "Specialty Counseling"]
        return ""
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mySection = indexPath.section
        //performSegue(withIdentifier: "resIden", sender: self)
        
        
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
class resourcesPsychiatristsViewController: UITableViewController {
    var backTitle: String!
    var resources = [
        [Resource(category: "Psychiatrists", name: "Tae Y. Lee, M.D. - Lakeside Life Center", contact: "972-221-1741", address: "4100 Fairway Court, Bldg. 200", city: "Carrollton", state: "Texas", zip: "75010", website: "www.lakesidelifecenter.com", addInfo: "Focus: Specializes in child and adolescent psychiatry/childhood depression. Examples of conditions treated by Dr. Lee:  Depressive Disorders, Anxiety, Phobic Disorders, ADD, Autism, Bipolar, Eating Disorders, and Schizophrenia.; Insurance: Aetna, BCBS Blue Card PPO; BCBS TX Blue Choice and Cigna. (Call to confirm)"),
         Resource(category: "Psychiatrists", name: "Sandy Lotan, MD - Park Cities Psychiatry", contact: "214-522-7240", address: "5944 Luther Ln. #30", city: "Dallas", state: "Texas", zip: "75225", website: "www.parkcitiespsych.com", addInfo: "Child and Adolescent Psychiatrist; Commonly treats: ADD, Anxiety Dissociative and Somatoform Disorder; Anxiety Phobic Disorders, Depressive Disorders, Obsessive Compulsive Disorder (OCD); Insurance: Humana Insurance (Call to confirm)"),
         Resource(category: "Psychiatrists", name: "Uros Zrnic, M.D", contact: "972-393-1596 X 25", address: "413 W. Bethel Rd. #100", city: "Coppell", state: "Texas", zip: "75019", website: "www.coppellcounseling.com", addInfo: "Licensed child, adolescent, and adult psychiatrist; Area of expertise:  ADHD, Depression, Anxiety, Bipolar Disorder, Psychosis; Insurance: United Healthcare (Call to confirm)")],
    ]
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        Dictionary(grouping: self.resources) { (resources) -> String in
            return categorySection(resources.categoryType)
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = "Resources"
        
//        if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
//            let viewController = ctrs[ctrs.count - 2] as! BackTitle
//            let backButton = UIBarButtonItem()
//            backButton.title = viewController.backTitle
//            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return resources.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resources[section].count
        //count = 0
        /*if counter != 0 {
            count = tempArray.count
        }
        counter += 1*/
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)

        // Configure the cell...
        
        //let resource = resources[indexPath.row]
        let resource = resources[indexPath.section][indexPath.row]
        cell.textLabel?.text = resource.name

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //let categoryArray = ["Crisis Lines", "Inpatient/Outpatient Mental Health Facilities", "Counseling Centers", "Eating Disorders", "Drug and Alcohol Abuse", "Specialty Counseling"]
        return ""
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mySection = indexPath.section
        //performSegue(withIdentifier: "resIden", sender: self)
        
        
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
class resourcesFamilyAssistanceViewController: UITableViewController {
    var backTitle: String!
    var resources = [
        [Resource(category: "Family Assistance", name: "CCA Lewisville", contact: "972-315-6544", address: "2202 S. Hwy 121", city: "Lewisville", state: "Texas", zip: "75067", website: "www.ccahelps.org", addInfo: "CCA provides comprehensive services to assist families in need.; Crisis Management and Relief Services; Food Pantry; Essential Training and Life Skills such as GED, ESL, Job Search and Readiness Skills, Computer Skills, and Financial Management; There is an application process. Applicants must meet specific criteria.; Resale shop at same address. Open Monday-Saturday 10:00 am - 8:00pm."),
         Resource(category: "Family Assistance", name: "Coppell Cares", contact: "972-462-0471 x 208", address: "420 S. Heartz Rd", city: "Coppell", state: "Texas", zip: "75019", website: "", addInfo: "Provides services to families in Coppell including short-term financial assistance, food, school supplies, activity fees, etc.; Provide referrals to other community resources that may be necessary for long term assistance"),
         Resource(category: "Family Assistance", name: "Irving Cares", contact: "972-721-9181", address: "440 South Nursery Rd., Suite 101", city: "Irving", state: "Texas", zip: "75060", website: "www.irvingcares.org", addInfo: "Irving Cares provides a variety of services to families in Irving including financial assistance for rent, mortgage, and utilities, prescriptions, food Pantry, and employment Services Program.; It is in the Human Services Building."),
         Resource(category: "Family Assistance", name: "Metrocrest Services", contact: "972-446-2100", address: "13801 Hutton Dr., Suite 150", city: "Farmers Branch", state: "Texas", zip: "75234", website: "www.metrocrestservices.org", addInfo: "Metrocrest provides a variety of services to families in Coppell including emergency Rent and utilities, food pantry, employment counseling, financial education, medical aid, and senior services.")],
    ]
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        Dictionary(grouping: self.resources) { (resources) -> String in
            return categorySection(resources.categoryType)
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = "Resources"
        
//        if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
//            let viewController = ctrs[ctrs.count - 2] as! BackTitle
//            let backButton = UIBarButtonItem()
//            backButton.title = viewController.backTitle
//            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return resources.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resources[section].count
        //count = 0
        /*if counter != 0 {
            count = tempArray.count
        }
        counter += 1*/
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)

        // Configure the cell...
        
        //let resource = resources[indexPath.row]
        let resource = resources[indexPath.section][indexPath.row]
        cell.textLabel?.text = resource.name

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //let categoryArray = ["Crisis Lines", "Inpatient/Outpatient Mental Health Facilities", "Counseling Centers", "Eating Disorders", "Drug and Alcohol Abuse", "Specialty Counseling"]
        return ""
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mySection = indexPath.section
        //performSegue(withIdentifier: "resIden", sender: self)
        
        
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
class resourcesSupportViewController: UITableViewController {
    var backTitle: String!
    var resources = [
        [Resource(category: "Support Groups and Resources", name: "Alcoholic Anonymous Meetings - Coppell AA Group (Rejoice Lutheran Church)", contact: "972-693-4673", address: "532 E. Sandy Lake Rd", city: "Coppell", state: "Texas", zip: "75019", website: "", addInfo: ""),
         Resource(category: "Support Groups and Resources", name: "Alcoholic Anonymous Meetings - Friendship Group", contact: "972-436-9833", address: "359 Lake Park Road, Suite 129", city: "Lewisville", state: "Texas", zip: "75057", website: "www.friendshipaa.net", addInfo: ""),
         Resource(category: "Support Groups and Resources", name: "Alcoholic Anonymous Meetings - Dallas Intergroup Association", contact: "214-887-6699", address: "", city: "", state: "", zip: "", website: "www.aadallas.org", addInfo: "Helps a person find a group"),
         Resource(category: "Support Groups and Resources", name: "Al-Anon Meetings - Friendship Group", contact: "972-436-9833", address: "359 Lake Park Road, Suite 129", city: "Lewisville", state: "Texas", zip: "75057", website: "www.friendshipaa.net", addInfo: ""),
         Resource(category: "Support Groups and Resources", name: "Al-Anon Meetings - Al-Anon Family Groups", contact: "", address: "", city: "", state: "", zip: "", website: "www.al-anon.org", addInfo: "Includes Alateen"),
         Resource(category: "Support Groups and Resources", name: "Alzheimer’s - Alzheimer’s Organization/Greater Dallas", contact: "800-272-3900 and 24/7 Helpline 800-272-3900", address: "3001 Knox St., #200", city: "Dallas", state: "Texas", zip: "75204", website: "www.alz.org/greaterdallas", addInfo: "Help for someone facing Alzheimer’s; Help for caregivers; Support groups; Programs; Message Boards"),
         Resource(category: "Support Groups and Resources", name: "Alzheimer’s - Lewisville Alzheimer’s Caregivers Support - First Baptist Church Lewisville", contact: "214-394-4721 and bronwenzilmer@gmail.com", address: "1251 W. Valley Ridge Blvd.", city: "Lewisville", state: "Texas", zip: "75077", website: "", addInfo: "Designed to provide emotional, educational, and social support for caregivers.; Meet 1st Friday of every month; 10:00 am – 11:30 am; Room 223; Contact Bronwen Zilmer"),
         Resource(category: "Support Groups and Resources", name: "Alzheimer’s - The Oasis, an Early Stage Alzheimer’s/Dementia Program - First Baptist Church Lewisville", contact: "214-394-4721 and bronwenzilmer@gmail.com", address: "1251 W. Valley Ridge Blvd.", city: "Lewisville", state: "Texas", zip: "75077", website: "", addInfo: "Provides a meeting place for adults with early to mid-stage Alzheimer’s disease or related dementias.; Meetings will combine socialization, physical movement, music and memory stimulating activities.; Meet Thursday from 10 am – 2 pm.; They break during the summer months and follow LISD school calendar.; Contact Bronwen Zilmer-Program Coordinator"),
         Resource(category: "Support Groups and Resources", name: "Elderly - Life Transition Planning - Full Circle Advisors - Rob Novic, LCSW", contact: "214-586-0066", address: "520 East Central Parkway Bldg. 200, Ste 234", city: "Plano", state: "Texas", zip: "75074", website: "https://robnovick.com/consulting-services", addInfo: "A fee for service company in the life transition planning industry.; They develop a comprehensive portfolio that includes legal, financial, medical, and other key information for their client about their aging loved one(s)."),
         Resource(category: "Support Groups and Resources", name: "Cancer Support - Community North Texas (offers telehealth)", contact: "888-793-9355 (Toll Free Hotline)", address: "", city: "", state: "", zip: "", website: "www.cancersupporttexas.org", addInfo: ""),
         Resource(category: "Support Groups and Resources", name: "Cancer Support - Texas Health Dallas Cancer Center", contact: "214-345-8230", address: "8196 Walnut Hill Lane, LL10", city: "Dallas", state: "Texas", zip: "75231", website: "", addInfo: ""),
         Resource(category: "Support Groups and Resources", name: "Cancer Support - Texas Health Presbyterian Hospital Plano", contact: "972-981-7020", address: "6300 W. Parker Rd., MOB 2, Suite 129 A", city: "Plano", state: "Texas", zip: "75093", website: "", addInfo: "Completely free of charge and nonprofit, Cancer Support Community offers educational presentations, teen support programs, support and networking groups, children’s support program-Noogieland, workshops like yoga, meditation, Zumba, and creative arts, bereavement support for adults and children, and fun social events."),
         Resource(category: "Support Groups and Resources", name: "Grief Support Groups - El Tesoro de la Vida Grief Camp - Camp Fire", contact: "817-831-2111", address: "2700 Meacham Blvd.", city: "Fort Worth", state: "Texas", zip: "76137", website: "www.campfirefw.org", addInfo: "A one week grief camp for school age students (1st graders to 12 graders).; Death has had to occur.; Camp is held in the summer.; There is a fee, however, financial assistance is available.; There is an application process that begins in February."),
         Resource(category: "Support Groups and Resources", name: "Grief Support Groups - Journey of Hope", contact: "972-964-1600", address: "3900 West 15th St.", city: "Plano", state: "Texas", zip: "75075", website: "www.johgriefsupport.com", addInfo: "A non-profit organization.; They offer grief support to children, teens, and young adults and their caregivers or adult caregivers.; A non-profit organization dedicated to providing group grief support to children, adolescents and their parents or adult caregivers, who have lost a loved one. An intake meeting is required.; Participants learn to mourn the death or impending death of their loved ones.; There is no fee for this service."),
         Resource(category: "Support Groups and Resources", name: "Grief Support Groups - The Warm Place", contact: "817-870-2272", address: "809 Lipscomb Street", city: "Fort Worth", state: "Texas", zip: "76104", website: "www.thewarmplace.org", addInfo: "The Warm Place offers grief support for children 3 ½-18 years old and their families, as well as, young adults 19-25 years old, who have experienced the death of a loved one.; They never charge a fee.; No geographical limitations.; No time limits."),
         Resource(category: "Support Groups and Resources", name: "Grief Support Groups - Survivors of Suicide (SOS) - Suicide Crisis Center of North Texas", contact: "214-824-7020", address: "Suicide Crisis Center of North Texas", city: "Dallas", state: "Texas", zip: "", website: "www.sccenter.org", addInfo: "A unique program for those who have experienced the loss of a loved one to suicide.; After completion of the eight week course, ongoing support is offered through a program called Next Step.; Free service for anyone who lives in the community."),
         Resource(category: "Support Groups and Resources", name: "Mental Health Support - NAMI (National Alliance on Mental Illness)", contact: "214-341-7133", address: "2812 Swiss Avenue", city: "Dallas", state: "Texas", zip: "75204", website: "www.namidallas.org", addInfo: "Mental health organization dedicated to building better lives for those affected by mental illness.  They offer resources, education, support groups, and a veteran activity network."),
         Resource(category: "Support Groups and Resources", name: "Mental Health Support - Mental Health Grace Alliance", contact: "Living Grace Group: Contact healthmurry@yahoo.com and Family Grace Group: Contact mytrabuzz@gmail.com", address: "2435 Kinwest Pkwy", city: "Irving", state: "Texas", zip: "75063", website: "", addInfo: "Christian curriculum-based support groups for those dealing with mental illness or for those supporting someone with mental illness.; These support groups are typically offered through churches such as Irving Bible Church.; Living Grace Group: Support group for those who have mental illness.; Family Grace Group: Support group for family members of and individuals with mental illness.")],
    ]
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        Dictionary(grouping: self.resources) { (resources) -> String in
            return categorySection(resources.categoryType)
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = "Resources"
        
//        if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
//            let viewController = ctrs[ctrs.count - 2] as! BackTitle
//            let backButton = UIBarButtonItem()
//            backButton.title = viewController.backTitle
//            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return resources.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resources[section].count
        //count = 0
        /*if counter != 0 {
            count = tempArray.count
        }
        counter += 1*/
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)

        // Configure the cell...
        
        //let resource = resources[indexPath.row]
        let resource = resources[indexPath.section][indexPath.row]
        cell.textLabel?.text = resource.name

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //let categoryArray = ["Crisis Lines", "Inpatient/Outpatient Mental Health Facilities", "Counseling Centers", "Eating Disorders", "Drug and Alcohol Abuse", "Specialty Counseling"]
        return ""
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        mySection = indexPath.section
        //performSegue(withIdentifier: "resIden", sender: self)
        
        
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

class Resource{
    var category: String
    var name: String
    var contact: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var addInfo: String
    static var myArray: [[Resource]]{
        var resources = [
            [Resource(category: "Crisis Lines", name: "Child Protective Services", contact: "1-800-252-5400", address: "", city: "", state: "", zip: "", website: "", addInfo: "Texas law says anyone who thinks a child, or person 65 years or older, or an adult with disabilities is being abused, neglected, or exploited must report it to DFPS. A person who reports abuse in good faith is immune from civil or criminal liability"),
            Resource(category: "Crisis Lines", name: "National Suicide Prevention Lifeline", contact: "Call or text 988 or 1-800-273-8255", address: "", city: "", state: "", zip: "", website: "https://suicidepreventionlifeline.org/", addInfo: "24/7 free, confidential support for anyone in distress; Prevention and crisis resources for you or loved ones"),
            Resource(category: "Crisis Lines", name: "Crisis Text Line", contact: "Text ‘HELLO’ to 741741 ", address: "", city: "", state: "", zip: "", website: "", addInfo: ""),
            Resource(category: "Crisis Lines", name: "Suicide Crisis Center of North Texas", contact: "214-828-1000", address: "", city: "", state: "", zip: "", website: "", addInfo: "Suicide and Crisis Hotline; Available 24/7 for anyone in crisis or contemplating suicide; Programs for those who have lost a loved one to suicide (free); Teen Programs (TeenScreen) (free)"),
            Resource(category: "Crisis Lines", name: "Texas Youth and Runaway Hotline", contact: "Hotline: 1-800-989-6884; Texting - 512-872-5777; Chat - texasyouth.org", address: "", city: "", state: "", zip: "", website: "texasyouth.org", addInfo: "Individuals can call, chat or text; Crisis Intervention; Referrals for callers who need shelter, counseling, and transportation home; A confidential message relay service is available to promote communications between runaways and their families"),
            Resource(category: "Crisis Lines", name: "Love is Respect", contact: "Hotline: 1-866-331-9474; Texting - love is to 22522; Chat - loveisrespect.org", address: "", city: "", state: "", zip: "", website: "loveisrespect.org", addInfo: "24 hour web based and telephone helpline from National Domestic Violence Hotline; Created to help teens (ages 13-18) to prevent and end dating abuse"),
            Resource(category: "Crisis Lines", name: "The Trevor Project", contact: "1-866-488-7386", address: "", city: "", state: "", zip: "", website: "thetrevorproject.org", addInfo: "Hotline 24/7; Individuals can call, chat, or text; Crisis Intervention and suicide prevention services for lesbian, gay, bisexual, transgender and questioning (LGBTQ) youth under age 25"),
            Resource(category: "Crisis Lines", name: "Here for Texas", contact: "972-525-8181", address: "", city: "", state: "", zip: "", website: "www.herefortexas.com", addInfo: "Free Service; Connects individuals to a trained mental health navigator who can offer support and information about mental health services in our area; Resources are available for anxiety, depression, bipolar, addictions, and other mental health conditions; Helps with transportation to the mental health facility")],
            [Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Carrollton Springs", contact: "972-544-7980", address: "2225 Parker Road", city: "Carrollton", state: "Texas", zip: "75010", website: "https://carrolltonsprings.com/programs/inpatient-treatment/", addInfo: "Offers telehealth; Focus: Offers inpatient mental health treatment; Cost: Accepts most major insurance plans"),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Carrollton Springs Changes ", contact: "469-850-2040", address: "6870 Lebanon Road, Suite 300", city: "Frisco", state: "Texas", zip: "75034", website: "https://carrolltonsprings.com/locations/frisco-tx/", addInfo: "Offers telehealth; Focus: Offers mental health treatment on an outpatient basis through PHP and IOP; Ages: Serves children and adolescents ages 11-18; Cost: Accepts most major insurance plans"),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Charles E. Seay Behavioral Health Center", contact: "682-549-7934 ", address: "6110 W. Parker Road", city: "Plano", state: "Texas", zip: "75093", website: "www.texashealth.org", addInfo: "8 a.m. to 8 p.m; After hours emergency; Mental Health Facility; Focus: mental health, drug and alcohol issues. Offers inpatient, PHP and IOP; Age: Adolescents 12-17. Adults 18 and older will be referred to the adult unit. Children 11 and under will be referred to Children’s Health; Insurance: Approved provider for most major care insurance plans. Contact to see if they accept your insurance plan."),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Children’s Health (formerly Children’s Medical Center)", contact: "Intake number/mental health issues: 214-456-8899; Children’s Outpatient Psychiatry Clinic:  214-456-5937; Children’s Emergency Room:  214-456-7000", address: "1935 Medical District Drive", city: "Dallas", state: "Texas", zip: "75235", website: "www.childrens.com", addInfo: "Focus: mental health issues, both inpatient and outpatient; Age: children & adolescents up to age 17; Insurance: Variety of insurance companies (call to verify insurance); If a child is suicidal, they should be taken directly to the Emergency Room."),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "The Excel Center Lewisville", contact: "972-906-5522", address: "190 Civic Center, Suite 170", city: "Lewisville", state: "Texas", zip: "75067", website: "www.excelcenterlewisville.com", addInfo: "Focus: specialized day treatment specializing in anger, depression, ADHD and mood disorders; offer Dialectical; Behavior Therapy, EMDR and TBRI; Age: children and adolescents (5-18); Free Assessments; A TEA accredited school is located on campus; Offer transportation options; Insurance: Many major insurance providers. Call to confirm."),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Parkland Hospital (Behavioral Health Center)", contact: "214-590-5536", address: "6300 Harry Hines, 7th floor", city: "Dallas", state: "Texas", zip: "75235", website: "www.parklandhospital.com", addInfo: "Focus: wide range of mental health services (therapy, evaluations, neuropsychology); Age: children, adolescents, adults; Insurance: most major insurance providers, Medicare, and Medicaid. They help patients find financial assistance."),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "SPARC at Children’s (Suicide Prevent and Resilience at Children’s Health)", contact: "214-456-3600", address: "6300 Harry Hines Blvd., Suite 1200", city: "Dallas", state: "Texas", zip: "75235", website: "https://www.childrens.com/specialties-services/specialty-centers-and-programs/psychiatry-and-psychology/conditions-and-programs/suicide-behaviors", addInfo: "The program is for adolescents, who: Are between 12-17 years old, have made a suicide attempt or have significant worsening of suicidal thoughts, require more intensive care than available through outpatient services, are able to attend six to nine hours of treatment each week, are seeing a psychiatrist or therapist. (Assistance in locating these services will be provided.); Current treatment providers and parents can refer adolescents to this program.; Insurance: Many major insurance providers. Call to see options. "),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "University Behavioral Health", contact: "940-320-8100", address: "2026 W. University Dr.", city: "Denton", state: "Texas", zip: "76201", website: "www.ubhdenton.com", addInfo: "24/7 Assessments; Focus: mental health and substance abuse issues; Age: children (5-12 years old), adolescents (13-17 years old) and adults; Insurance: Accepts most major insurances.  They cannot take North Star.; Contact UBH to see if they accept your insurance.")],
            [Resource(category: "Counseling Centers", name: "Coppell Counseling Center", contact: "972-393-1596", address: "413 W. Bethel Road, Suite 100", city: "Coppell", state: "Texas", zip: "75019", website: "www.coppellcounseling.com", addInfo: "A suite of independent licensed mental health practitioners; Coppell Counseling Center mental health professionals participate in many preferred provider organizations.  "),
            Resource(category: "Counseling Centers", name: "Dallas DBT", contact: "972-918-0170", address: "9900 North Central Expressway, Suite 500", city: "Dallas", state: "Texas", zip: "75231", website: "www.dallasdbt.com", addInfo: "Offers tele-health; Focus: Team of clinicians practicing dialectical behavioral therapy through individual therapy, skills groups, coaching calls, and clinician consultations; Age: Children, adolescents, adults, and families; Insurance: They do not accept insurance. See website for rates.  "),
            Resource(category: "Counseling Centers", name: "Family Tree", contact: "972-353-9404; 888-837-0666, ext. 7 (Dallas County)", address: "2727 LBJ Freeway, Suite 406", city: "Farmers Branch", state: "Texas", zip: "75234", website: "www.familytreeprogram.org", addInfo: "Offers tele-health; Family counseling at no cost.; Spanish speaking available; Families are usually eligible if they have a youth 17 or younger in the home, they currently are not receiving services from CPS, and the youth has never been adjudicated of a crime.; Presenting issues can be served in the short term services provided."),
            Resource(category: "Counseling Centers", name: "Holiner Psychiatric Group", contact: "972-566-4591", address: "7777 Forest Lane, Building C, Suite 833", city: "Dallas", state: "Texas", zip: "75230", website: "www.holinergroup.com", addInfo: "Offers tele-health; Offers tele-health; Focus: A full service practice committed to providing high quality psychiatric services.; Age: Children, adolescents and adults.; Insurance: See their website for a list of insurance companies or call to verify.; They accept Medicare, Value Options."),
            Resource(category: "Counseling Centers", name: "Innovation 360", contact: "214-733-9565", address: "6600 LBJ Freeway, Suite 240", city: "Dallas", state: "Texas", zip: "75240", website: "www.i360dallas.com", addInfo: "Focus: A team of certified doctors, psychologists and licensed counselors specializing in mental health treatment, addiction and emerging adulthood.; Age: Teens and adults.; Insurance: They do not accept insurance."),
            Resource(category: "Counseling Centers", name: "Psychological Services of North Texas", contact: "817-416-7169", address: "7135 Colleyville Blvd., Suite 101", city: "Colleyville", state: "Texas", zip: "76034", website: "www.psntdocs.com", addInfo: "Focus: Psychological testing and therapy for anxiety, depression/mood disorders, eating disorders, LGBTQ, parenting, physical health, relationships, sports counseling, and trauma; Dr. Kathleen Nadelson:        Focus: Psychological testing and therapy;        Ages: Children to adults; Insurance: They accept many major insurance groups, Medicare, Medicaid, and offer sliding-scale fees."),
            Resource(category: "Counseling Centers", name: "Richland Oaks Counseling Center", contact: "469-619-7622", address: "1221 Abrams Rd., Suite 325", city: "Richardson", state: "Texas", zip: "75081", website: "www.richlandoaks.org", addInfo: "Offers tele-health; A nonprofit teaching and research clinic with locations in Richardson, Plano, McKinney and Prosper; Full range of counseling services and psychological assessment; Bilingual services in: Spanish, Urdu, Punjabi, Hindi, and conversational ASL; Insurance: They accept many major insurance groups, including Medicare. Call for availability."),
            Resource(category: "Counseling Centers", name: "SMU Center for Family Counseling", contact: "214-768-6789", address: "6116 N. Central Expressway #410", city: "Dallas", state: "Texas", zip: "75206", website: "www.smu.com/familycounseling", addInfo: "In-person and telehealth low-cost counseling for children, adolescents and families; Monday through Thursday from 11:30am-7:30pm"),
            Resource(category: "Counseling Centers", name: "Taylor Counseling Group", contact: "214-530-0021", address: "870 S. Denton Tap Road, Suite 150", city: "Coppell", state: "Texas", zip: "75019", website: "taylorcounselinggroup.com", addInfo: "Offers tele-health; Practice of clinicians that provide individual, family and play therapy for ages 5-adult; Insurance: They are in-network with most major insurance groups. They also offer an affordable care program for reduced fees."),
            Resource(category: "Counseling Centers", name: "University Of North Texas - Counseling and Human Development Center", contact: "940-565-2970", address: "425 S. Welch Street", city: "Denton", state: "Texas", zip: "76203-5017", website: "www.coe.unt.edu/counseling-and-human-development-center", addInfo: "Focus: individual adult/adolescent counseling, career counseling, couples counseling and play therapy provided by advanced masters or beginning doctoral students in professional counseling.; Insurance: They do not accept insurance, Medicaid, or Medicare.; Cost: Sliding fee scales; they do not refuse services for inability to pay.")],
            [Resource(category: "Eating Disorders", name: "Center for Discovery", contact: "1-855-257-4977", address: "5124 Corinthian Bay Drive", city: "Plano", state: "Texas", zip: "75093", website: "https://centerfordiscovery.com/locations/plano/", addInfo: "Focus: Whole person treatment center for males and females who have been diagnosed with an eating disorder; Age: Children and adolescents, age 10-28; Insurance: Accepts most major insurance plans"),
            Resource(category: "Eating Disorders", name: "Children’s Health (Specialty Center 1 Plano)", contact: "469-303-5900; 214-456-8899, option 3 (Eating Disorders New Patient)", address: "7609 Preston Road", city: "Plano", state: "Texas", zip: "75024", website: "www.childrens.com", addInfo: "Focus: Children’s offers a full continuum of specialized services for children and adolescents with eating disorders (male and female). ; Age: Children and adolescents - the only facility in North Texas that offers services for children under 12.; Insurance: Call Children’s to see if they accept your insurance provider."),
            Resource(category: "Eating Disorders", name: "Eating Recovery Center-Dallas", contact: "972-833-2828", address: "5120 Legacy Drive", city: "Plano", state: "Texas", zip: "75024", website: "www.dallas.eatingrecoverycenter.com", addInfo: "Focus: Accredited center for eating disorders treatment and prevention. They serve female and males, adults, children, and adolescents with Anorexia, Bulimia, Binge, Eating Disorders and co-occurring disorders.; They offer inpatient, residential, partial hospitalization and IOP treatment.; Families are involved in the treatment process.; Age: Children must be at least 10 years old.; Insurance: Accept many major insurance companies, however the list changes frequently.  Accepts Value Options. Call insurance and financial specialists for a benefits check. "),
            Resource(category: "Eating Disorders", name: "Elisa Project", contact: "866-837-1999; 214-369-5222", address: "10300 N. Central Expressway, #330", city: "Dallas", state: "Texas", zip: "75231", website: "www.theelisaproject.org", addInfo: "Focus: Fighting against eating disorders through education, support, and advocacy.  The ELISA project is not a treatment center; Connect families and individuals with resources.; Age: Resources for all ages, from young children to adults.; Cost: Free of charge"),
            Resource(category: "Eating Disorders", name: "Walker Wellness", contact: "(214) 549-2901", address: "12200 Preston Road", city: "Dallas", state: "Texas", zip: "75230", website: "www.walkerwellness.com", addInfo: "Focus: Individualized treatment plan to help men, women, and adolescents who are dealing with eating disorders and body image issues, depression, anxiety, obsessive-compulsive disorders. They offer day program, intensive outpatient, and standard outpatient treatment options.; Age: Adolescents 12 and older and Adults; Insurance: They do not accept insurance.")],
            [Resource(category: "Drug and Alcohol Abuse", name: "Hazelden Betty Ford Foundation", contact: "1-800-257-7810", address: "", city: "", state: "Texas", zip: "", website: "https://hazelden.org", addInfo: "Drug addiction treatment provider with 17 sites nationwide; Website offers valuable information on addiction for individuals and families.; Online bookstore."),
            Resource(category: "Drug and Alcohol Abuse", name: "Adolescent Drug and Alcohol Assessments - Solutions Outpatient Services", contact: "214-369-1155", address: "4300 MacArthur Avenue, Suite 270", city: "Dallas", state: "Texas", zip: "75209", website: "www.sosdallas.com", addInfo: "Provides comprehensive substance abuse/dependence evaluations for adolescents and adults; They offer an alcohol, drug abuse, and separate eating disorder intensive outpatient treatment program for adults."),
            Resource(category: "Drug and Alcohol Abuse", name: "Adolescent Drug and Alcohol Assessments - Dallas Recovery Center", contact: "214-789-8456", address: "4950 Keller Springs Rd., Suite 180", city: "Addison", state: "Texas", zip: "75001", website: "https://jimsavage.net/counseling-services/assessment.html", addInfo: "Jim Savage, LCDC, owner and therapist; Adolescent assessment (prevention and intervention); Counseling services, parent seminars and aftercare support.; Insurance is not accepted."),
            Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - Capstone Treatment Center", contact: "866-729-4479", address: "120 Meghan Lane", city: "Judsonia", state: "Arizona", zip: "72081", website: "www.capstonetreatmentcenter.com", addInfo: "Focus: Behavioral Health system based on a Christian foundation which emphasizes on addiction, trauma, family conflict, and co-occurring disorders.; Age: A residential programs that works with adolescent and young adult males; Insurance: Reimbursement only"),
            Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - Memorial Hermann Houston", contact: "713-939-7272", address: "3043 Gessner Road", city: "Houston", state: "Texas", zip: "77080", website: "parc.memorialhermann.org", addInfo: "Focus: Hospital based program for substance abuse treatment for people who are struggling with addiction. They offer residential treatment, partial hospitalization, intensive outpatient, aftercare programs, and family rehab.; Age: Teens (13-17), Young Adults (18-24), and Adults (25+); Several layers of care; Insurance: Accept most major insurances but do not accept Medicare, Medicaid, Tricare, Amerigroup, STAR, CHIP"),
            Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - NEXUS Recovery Center", contact: "214-321-0156 X 3118", address: "8733 LaPrada Dr.", city: "Dallas", state: "Texas", zip: "75228", website: "www.nexusrecovery.org", addInfo: "Focus: Substance abuse services for teenage girls and adult women. The only drug treatment facility in Texas that accommodates a late term pregnancy or a newly parenting teen.; Allows women 18 and older to bring as many as 3 children.; Age: Girls 13-17, Women; Insurance: Many insurance plans are accepted."),
            Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - Sundown Ranch", contact: "903-479-3933", address: "3120 VZ County Rd. 2318", city: "Canton", state: "Texas", zip: "75103", website: "https://sundownranchinc.com", addInfo: "Focus: Treats adolescents and young adults suffering from substance abuse disorder or chemical dependency through residential treatment, aftercare planning and an academic program.; Age: 12-24; Insurance: Many major insurances accepted. Call to verify. "),
            Resource(category: "Drug and Alcohol Abuse", name: "Timberline Knolls", contact: "855-254-8326", address: "40 Timberline Drive", city: "Lemont", state: "Illinois", zip: "60439", website: "www.timberlineknolls.com", addInfo: "Focus: Residential treatment center with a focus on eating disorders, substance abuse and addiction, mood disorders and trauma.; Age: Females 12 and older; Insurance: Many major insurances accepted.")],
            [Resource(category: "Specialty Counseling", name: "Art Therapy - The Art Station", contact: "817-921-2401", address: "1616 Park Place", city: "Fort Worth", state: "Texas", zip: "76110", website: "www.theartstation.org", addInfo: "Focus: Individual and group art therapy including assessments.; Clients:  Young children to adults; Insurance: Accept some insurance plans and may provide financial assistance.; Usually a waiting list.")],
            ]
        return resources
    }
    
    
    init(category: String, name: String, contact: String, address: String, city: String, state: String, zip: String, website: String, addInfo: String) {
        self.category = category
        self.name = name
        self.contact = contact
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.website = website
        self.addInfo = addInfo
    }
    
}
class specificResourceViewController: UIViewController {
    var backTitle: String!
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resDescLabel: UILabel!
    @IBOutlet var resWebLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    var ad = Resource.myArray[mySection][myIndex].address
    var ci = Resource.myArray[mySection][myIndex].city
    var st = Resource.myArray[mySection][myIndex].state
    var zi = Resource.myArray[mySection][myIndex].zip
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = Resource.myArray[mySection][myIndex].name
        
        /*if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
            let viewController = ctrs[ctrs.count - 2] as! BackTitle
            let backButton = UIBarButtonItem()
            backButton.title = viewController.backTitle
            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        }*/
        
        resNameLabel.text = Resource.myArray[mySection][myIndex].name
        resCatLabel.text = Resource.myArray[mySection][myIndex].category
        resDescLabel.text = Resource.myArray[mySection][myIndex].addInfo
        resWebLabel.text = Resource.myArray[mySection][myIndex].website
        resContLabel.text = Resource.myArray[mySection][myIndex].contact
        if(Resource.myArray[mySection][myIndex].category == "Crisis Lines"){
            resAddressLabel.text = "";
        }
        else{
            resAddressLabel.text = ad + " " + ci + ", " + st + " " + zi
        }
    }
    
    
}
class ResourceInOut{
    var category: String
    var name: String
    var contact: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var addInfo: String
    static var myArray: [[Resource]]{
        var resources = [
            [Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Carrollton Springs", contact: "972-544-7980", address: "2225 Parker Road", city: "Carrollton", state: "Texas", zip: "75010", website: "https://carrolltonsprings.com/programs/inpatient-treatment/", addInfo: "Offers telehealth; Focus: Offers inpatient mental health treatment; Cost: Accepts most major insurance plans"),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Carrollton Springs Changes ", contact: "469-850-2040", address: "6870 Lebanon Road, Suite 300", city: "Frisco", state: "Texas", zip: "75034", website: "https://carrolltonsprings.com/locations/frisco-tx/", addInfo: "Offers telehealth; Focus: Offers mental health treatment on an outpatient basis through PHP and IOP; Ages: Serves children and adolescents ages 11-18; Cost: Accepts most major insurance plans"),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Charles E. Seay Behavioral Health Center", contact: "682-549-7934 ", address: "6110 W. Parker Road", city: "Plano", state: "Texas", zip: "75093", website: "www.texashealth.org", addInfo: "8 a.m. to 8 p.m; After hours emergency; Mental Health Facility; Focus: mental health, drug and alcohol issues. Offers inpatient, PHP and IOP; Age: Adolescents 12-17. Adults 18 and older will be referred to the adult unit. Children 11 and under will be referred to Children’s Health; Insurance: Approved provider for most major care insurance plans. Contact to see if they accept your insurance plan."),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Children’s Health (formerly Children’s Medical Center)", contact: "Intake number/mental health issues: 214-456-8899; Children’s Outpatient Psychiatry Clinic:  214-456-5937; Children’s Emergency Room:  214-456-7000", address: "1935 Medical District Drive", city: "Dallas", state: "Texas", zip: "75235", website: "www.childrens.com", addInfo: "Focus: mental health issues, both inpatient and outpatient; Age: children & adolescents up to age 17; Insurance: Variety of insurance companies (call to verify insurance); If a child is suicidal, they should be taken directly to the Emergency Room."),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "The Excel Center Lewisville", contact: "972-906-5522", address: "190 Civic Center, Suite 170", city: "Lewisville", state: "Texas", zip: "75067", website: "www.excelcenterlewisville.com", addInfo: "Focus: specialized day treatment specializing in anger, depression, ADHD and mood disorders; offer Dialectical; Behavior Therapy, EMDR and TBRI; Age: children and adolescents (5-18); Free Assessments; A TEA accredited school is located on campus; Offer transportation options; Insurance: Many major insurance providers. Call to confirm."),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "Parkland Hospital (Behavioral Health Center)", contact: "214-590-5536", address: "6300 Harry Hines, 7th floor", city: "Dallas", state: "Texas", zip: "75235", website: "www.parklandhospital.com", addInfo: "Focus: wide range of mental health services (therapy, evaluations, neuropsychology); Age: children, adolescents, adults; Insurance: most major insurance providers, Medicare, and Medicaid. They help patients find financial assistance."),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "SPARC at Children’s (Suicide Prevent and Resilience at Children’s Health)", contact: "214-456-3600", address: "6300 Harry Hines Blvd., Suite 1200", city: "Dallas", state: "Texas", zip: "75235", website: "https://www.childrens.com/specialties-services/specialty-centers-and-programs/psychiatry-and-psychology/conditions-and-programs/suicide-behaviors", addInfo: "The program is for adolescents, who: Are between 12-17 years old, have made a suicide attempt or have significant worsening of suicidal thoughts, require more intensive care than available through outpatient services, are able to attend six to nine hours of treatment each week, are seeing a psychiatrist or therapist. (Assistance in locating these services will be provided.); Current treatment providers and parents can refer adolescents to this program.; Insurance: Many major insurance providers. Call to see options. "),
            Resource(category: "Inpatient/Outpatient Mental Health Facilities", name: "University Behavioral Health", contact: "940-320-8100", address: "2026 W. University Dr.", city: "Denton", state: "Texas", zip: "76201", website: "www.ubhdenton.com", addInfo: "24/7 Assessments; Focus: mental health and substance abuse issues; Age: children (5-12 years old), adolescents (13-17 years old) and adults; Insurance: Accepts most major insurances.  They cannot take North Star.; Contact UBH to see if they accept your insurance.")],
            ]
        return resources
    }
    
    
    init(category: String, name: String, contact: String, address: String, city: String, state: String, zip: String, website: String, addInfo: String) {
        self.category = category
        self.name = name
        self.contact = contact
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.website = website
        self.addInfo = addInfo
    }
    
}
class specificResourceInOutViewController: UIViewController {
    var backTitle: String!
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resDescLabel: UILabel!
    @IBOutlet var resWebLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    var ad = ResourceInOut.myArray[mySection][myIndex].address
    var ci = ResourceInOut.myArray[mySection][myIndex].city
    var st = ResourceInOut.myArray[mySection][myIndex].state
    var zi = ResourceInOut.myArray[mySection][myIndex].zip
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = ResourceInOut.myArray[mySection][myIndex].name
        
        /*if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
            let viewController = ctrs[ctrs.count - 2] as! BackTitle
            let backButton = UIBarButtonItem()
            backButton.title = viewController.backTitle
            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        }*/
        
        resNameLabel.text = ResourceInOut.myArray[mySection][myIndex].name
        resCatLabel.text = ResourceInOut.myArray[mySection][myIndex].category
        resDescLabel.text = ResourceInOut.myArray[mySection][myIndex].addInfo
        resWebLabel.text = ResourceInOut.myArray[mySection][myIndex].website
        resContLabel.text = ResourceInOut.myArray[mySection][myIndex].contact
        if(ResourceInOut.myArray[mySection][myIndex].category == "Crisis Lines"){
            resAddressLabel.text = "";
        }
        else{
            resAddressLabel.text = ad + " " + ci + ", " + st + " " + zi
        }
    }
}
class ResourceCounseling{
    var category: String
    var name: String
    var contact: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var addInfo: String
    static var myArray: [[Resource]]{
        var resources = [
            [Resource(category: "Counseling Centers", name: "Coppell Counseling Center", contact: "972-393-1596", address: "413 W. Bethel Road, Suite 100", city: "Coppell", state: "Texas", zip: "75019", website: "www.coppellcounseling.com", addInfo: "A suite of independent licensed mental health practitioners; Coppell Counseling Center mental health professionals participate in many preferred provider organizations.  "),
            Resource(category: "Counseling Centers", name: "Dallas DBT", contact: "972-918-0170", address: "9900 North Central Expressway, Suite 500", city: "Dallas", state: "Texas", zip: "75231", website: "www.dallasdbt.com", addInfo: "Offers tele-health; Focus: Team of clinicians practicing dialectical behavioral therapy through individual therapy, skills groups, coaching calls, and clinician consultations; Age: Children, adolescents, adults, and families; Insurance: They do not accept insurance. See website for rates.  "),
            Resource(category: "Counseling Centers", name: "Family Tree", contact: "972-353-9404; 888-837-0666, ext. 7 (Dallas County)", address: "2727 LBJ Freeway, Suite 406", city: "Farmers Branch", state: "Texas", zip: "75234", website: "www.familytreeprogram.org", addInfo: "Offers tele-health; Family counseling at no cost.; Spanish speaking available; Families are usually eligible if they have a youth 17 or younger in the home, they currently are not receiving services from CPS, and the youth has never been adjudicated of a crime.; Presenting issues can be served in the short term services provided."),
            Resource(category: "Counseling Centers", name: "Holiner Psychiatric Group", contact: "972-566-4591", address: "7777 Forest Lane, Building C, Suite 833", city: "Dallas", state: "Texas", zip: "75230", website: "www.holinergroup.com", addInfo: "Offers tele-health; Offers tele-health; Focus: A full service practice committed to providing high quality psychiatric services.; Age: Children, adolescents and adults.; Insurance: See their website for a list of insurance companies or call to verify.; They accept Medicare, Value Options."),
            Resource(category: "Counseling Centers", name: "Innovation 360", contact: "214-733-9565", address: "6600 LBJ Freeway, Suite 240", city: "Dallas", state: "Texas", zip: "75240", website: "www.i360dallas.com", addInfo: "Focus: A team of certified doctors, psychologists and licensed counselors specializing in mental health treatment, addiction and emerging adulthood.; Age: Teens and adults.; Insurance: They do not accept insurance."),
            Resource(category: "Counseling Centers", name: "Psychological Services of North Texas", contact: "817-416-7169", address: "7135 Colleyville Blvd., Suite 101", city: "Colleyville", state: "Texas", zip: "76034", website: "www.psntdocs.com", addInfo: "Focus: Psychological testing and therapy for anxiety, depression/mood disorders, eating disorders, LGBTQ, parenting, physical health, relationships, sports counseling, and trauma; Dr. Kathleen Nadelson:        Focus: Psychological testing and therapy;        Ages: Children to adults; Insurance: They accept many major insurance groups, Medicare, Medicaid, and offer sliding-scale fees."),
            Resource(category: "Counseling Centers", name: "Richland Oaks Counseling Center", contact: "469-619-7622", address: "1221 Abrams Rd., Suite 325", city: "Richardson", state: "Texas", zip: "75081", website: "www.richlandoaks.org", addInfo: "Offers tele-health; A nonprofit teaching and research clinic with locations in Richardson, Plano, McKinney and Prosper; Full range of counseling services and psychological assessment; Bilingual services in: Spanish, Urdu, Punjabi, Hindi, and conversational ASL; Insurance: They accept many major insurance groups, including Medicare. Call for availability."),
            Resource(category: "Counseling Centers", name: "SMU Center for Family Counseling", contact: "214-768-6789", address: "6116 N. Central Expressway #410", city: "Dallas", state: "Texas", zip: "75206", website: "www.smu.com/familycounseling", addInfo: "In-person and telehealth low-cost counseling for children, adolescents and families; Monday through Thursday from 11:30am-7:30pm"),
            Resource(category: "Counseling Centers", name: "Taylor Counseling Group", contact: "214-530-0021", address: "870 S. Denton Tap Road, Suite 150", city: "Coppell", state: "Texas", zip: "75019", website: "taylorcounselinggroup.com", addInfo: "Offers tele-health; Practice of clinicians that provide individual, family and play therapy for ages 5-adult; Insurance: They are in-network with most major insurance groups. They also offer an affordable care program for reduced fees."),
            Resource(category: "Counseling Centers", name: "University Of North Texas - Counseling and Human Development Center", contact: "940-565-2970", address: "425 S. Welch Street", city: "Denton", state: "Texas", zip: "76203-5017", website: "www.coe.unt.edu/counseling-and-human-development-center", addInfo: "Focus: individual adult/adolescent counseling, career counseling, couples counseling and play therapy provided by advanced masters or beginning doctoral students in professional counseling.; Insurance: They do not accept insurance, Medicaid, or Medicare.; Cost: Sliding fee scales; they do not refuse services for inability to pay.")],
            ]
        return resources
    }
    
    
    init(category: String, name: String, contact: String, address: String, city: String, state: String, zip: String, website: String, addInfo: String) {
        self.category = category
        self.name = name
        self.contact = contact
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.website = website
        self.addInfo = addInfo
    }
    
}
class specificResourceCounselingViewController: UIViewController {
    var backTitle: String!
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resDescLabel: UILabel!
    @IBOutlet var resWebLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    var ad = ResourceCounseling.myArray[mySection][myIndex].address
    var ci = ResourceCounseling.myArray[mySection][myIndex].city
    var st = ResourceCounseling.myArray[mySection][myIndex].state
    var zi = ResourceCounseling.myArray[mySection][myIndex].zip
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = ResourceCounseling.myArray[mySection][myIndex].name
        
        /*if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
            let viewController = ctrs[ctrs.count - 2] as! BackTitle
            let backButton = UIBarButtonItem()
            backButton.title = viewController.backTitle
            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        }*/
        
        resNameLabel.text = ResourceCounseling.myArray[mySection][myIndex].name
        resCatLabel.text = ResourceCounseling.myArray[mySection][myIndex].category
        resDescLabel.text = ResourceCounseling.myArray[mySection][myIndex].addInfo
        resWebLabel.text = ResourceCounseling.myArray[mySection][myIndex].website
        resContLabel.text = ResourceCounseling.myArray[mySection][myIndex].contact
        if(ResourceCounseling.myArray[mySection][myIndex].category == "Crisis Lines"){
            resAddressLabel.text = "";
        }
        else{
            resAddressLabel.text = ad + " " + ci + ", " + st + " " + zi
        }
    }
    
    
}
class ResourceEatingDisorder{
    var category: String
    var name: String
    var contact: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var addInfo: String
    static var myArray: [[Resource]]{
        var resources = [
            [Resource(category: "Eating Disorders", name: "Center for Discovery", contact: "1-855-257-4977", address: "5124 Corinthian Bay Drive", city: "Plano", state: "Texas", zip: "75093", website: "https://centerfordiscovery.com/locations/plano/", addInfo: "Focus: Whole person treatment center for males and females who have been diagnosed with an eating disorder; Age: Children and adolescents, age 10-28; Insurance: Accepts most major insurance plans"),
            Resource(category: "Eating Disorders", name: "Children’s Health (Specialty Center 1 Plano)", contact: "469-303-5900; 214-456-8899, option 3 (Eating Disorders New Patient)", address: "7609 Preston Road", city: "Plano", state: "Texas", zip: "75024", website: "www.childrens.com", addInfo: "Focus: Children’s offers a full continuum of specialized services for children and adolescents with eating disorders (male and female). ; Age: Children and adolescents - the only facility in North Texas that offers services for children under 12.; Insurance: Call Children’s to see if they accept your insurance provider."),
            Resource(category: "Eating Disorders", name: "Eating Recovery Center-Dallas", contact: "972-833-2828", address: "5120 Legacy Drive", city: "Plano", state: "Texas", zip: "75024", website: "www.dallas.eatingrecoverycenter.com", addInfo: "Focus: Accredited center for eating disorders treatment and prevention. They serve female and males, adults, children, and adolescents with Anorexia, Bulimia, Binge, Eating Disorders and co-occurring disorders.; They offer inpatient, residential, partial hospitalization and IOP treatment.; Families are involved in the treatment process.; Age: Children must be at least 10 years old.; Insurance: Accept many major insurance companies, however the list changes frequently.  Accepts Value Options. Call insurance and financial specialists for a benefits check. "),
            Resource(category: "Eating Disorders", name: "Elisa Project", contact: "866-837-1999; 214-369-5222", address: "10300 N. Central Expressway, #330", city: "Dallas", state: "Texas", zip: "75231", website: "www.theelisaproject.org", addInfo: "Focus: Fighting against eating disorders through education, support, and advocacy.  The ELISA project is not a treatment center; Connect families and individuals with resources.; Age: Resources for all ages, from young children to adults.; Cost: Free of charge"),
            Resource(category: "Eating Disorders", name: "Walker Wellness", contact: "(214) 549-2901", address: "12200 Preston Road", city: "Dallas", state: "Texas", zip: "75230", website: "www.walkerwellness.com", addInfo: "Focus: Individualized treatment plan to help men, women, and adolescents who are dealing with eating disorders and body image issues, depression, anxiety, obsessive-compulsive disorders. They offer day program, intensive outpatient, and standard outpatient treatment options.; Age: Adolescents 12 and older and Adults; Insurance: They do not accept insurance.")],
            ]
        return resources
    }
    
    
    init(category: String, name: String, contact: String, address: String, city: String, state: String, zip: String, website: String, addInfo: String) {
        self.category = category
        self.name = name
        self.contact = contact
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.website = website
        self.addInfo = addInfo
    }
    
}
class specificResourceEatingDisorderViewController: UIViewController {
    var backTitle: String!
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resDescLabel: UILabel!
    @IBOutlet var resWebLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    var ad = ResourceEatingDisorder.myArray[mySection][myIndex].address
    var ci = ResourceEatingDisorder.myArray[mySection][myIndex].city
    var st = ResourceEatingDisorder.myArray[mySection][myIndex].state
    var zi = ResourceEatingDisorder.myArray[mySection][myIndex].zip
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = Resource.myArray[mySection][myIndex].name
        
            /*if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
            let viewController = ctrs[ctrs.count - 2] as! BackTitle
            let backButton = UIBarButtonItem()
            backButton.title = viewController.backTitle
            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        }*/
        
        resNameLabel.text = ResourceEatingDisorder.myArray[mySection][myIndex].name
        resCatLabel.text = ResourceEatingDisorder.myArray[mySection][myIndex].category
        resDescLabel.text = ResourceEatingDisorder.myArray[mySection][myIndex].addInfo
        resWebLabel.text = ResourceEatingDisorder.myArray[mySection][myIndex].website
        resContLabel.text = ResourceEatingDisorder.myArray[mySection][myIndex].contact
        if(ResourceEatingDisorder.myArray[mySection][myIndex].category == "Crisis Lines"){
            resAddressLabel.text = "";
        }
        else{
            resAddressLabel.text = ad + " " + ci + ", " + st + " " + zi
        }
    }
    
    
}
class ResourceAlchohol{
    var category: String
    var name: String
    var contact: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var addInfo: String
    static var myArray: [[Resource]]{
        var resources = [
            [Resource(category: "Drug and Alcohol Abuse", name: "Hazelden Betty Ford Foundation", contact: "1-800-257-7810", address: "", city: "", state: "Texas", zip: "", website: "https://hazelden.org", addInfo: "Drug addiction treatment provider with 17 sites nationwide; Website offers valuable information on addiction for individuals and families.; Online bookstore."),
            Resource(category: "Drug and Alcohol Abuse", name: "Adolescent Drug and Alcohol Assessments - Solutions Outpatient Services", contact: "214-369-1155", address: "4300 MacArthur Avenue, Suite 270", city: "Dallas", state: "Texas", zip: "75209", website: "www.sosdallas.com", addInfo: "Provides comprehensive substance abuse/dependence evaluations for adolescents and adults; They offer an alcohol, drug abuse, and separate eating disorder intensive outpatient treatment program for adults."),
            Resource(category: "Drug and Alcohol Abuse", name: "Adolescent Drug and Alcohol Assessments - Dallas Recovery Center", contact: "214-789-8456", address: "4950 Keller Springs Rd., Suite 180", city: "Addison", state: "Texas", zip: "75001", website: "https://jimsavage.net/counseling-services/assessment.html", addInfo: "Jim Savage, LCDC, owner and therapist; Adolescent assessment (prevention and intervention); Counseling services, parent seminars and aftercare support.; Insurance is not accepted."),
            Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - Capstone Treatment Center", contact: "866-729-4479", address: "120 Meghan Lane", city: "Judsonia", state: "Arizona", zip: "72081", website: "www.capstonetreatmentcenter.com", addInfo: "Focus: Behavioral Health system based on a Christian foundation which emphasizes on addiction, trauma, family conflict, and co-occurring disorders.; Age: A residential programs that works with adolescent and young adult males; Insurance: Reimbursement only"),
            Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - Memorial Hermann Houston", contact: "713-939-7272", address: "3043 Gessner Road", city: "Houston", state: "Texas", zip: "77080", website: "parc.memorialhermann.org", addInfo: "Focus: Hospital based program for substance abuse treatment for people who are struggling with addiction. They offer residential treatment, partial hospitalization, intensive outpatient, aftercare programs, and family rehab.; Age: Teens (13-17), Young Adults (18-24), and Adults (25+); Several layers of care; Insurance: Accept most major insurances but do not accept Medicare, Medicaid, Tricare, Amerigroup, STAR, CHIP"),
            Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - NEXUS Recovery Center", contact: "214-321-0156 X 3118", address: "8733 LaPrada Dr.", city: "Dallas", state: "Texas", zip: "75228", website: "www.nexusrecovery.org", addInfo: "Focus: Substance abuse services for teenage girls and adult women. The only drug treatment facility in Texas that accommodates a late term pregnancy or a newly parenting teen.; Allows women 18 and older to bring as many as 3 children.; Age: Girls 13-17, Women; Insurance: Many insurance plans are accepted."),
            Resource(category: "Drug and Alcohol Abuse", name: "Residential Inpatient Treatment for Adolescents Suffering From Chemical Dependency - Sundown Ranch", contact: "903-479-3933", address: "3120 VZ County Rd. 2318", city: "Canton", state: "Texas", zip: "75103", website: "https://sundownranchinc.com", addInfo: "Focus: Treats adolescents and young adults suffering from substance abuse disorder or chemical dependency through residential treatment, aftercare planning and an academic program.; Age: 12-24; Insurance: Many major insurances accepted. Call to verify. "),
            Resource(category: "Drug and Alcohol Abuse", name: "Timberline Knolls", contact: "855-254-8326", address: "40 Timberline Drive", city: "Lemont", state: "Illinois", zip: "60439", website: "www.timberlineknolls.com", addInfo: "Focus: Residential treatment center with a focus on eating disorders, substance abuse and addiction, mood disorders and trauma.; Age: Females 12 and older; Insurance: Many major insurances accepted.")],
            ]
        return resources
    }
    
    
    init(category: String, name: String, contact: String, address: String, city: String, state: String, zip: String, website: String, addInfo: String) {
        self.category = category
        self.name = name
        self.contact = contact
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.website = website
        self.addInfo = addInfo
    }
    
}
class specificResourceAlchoholViewController: UIViewController {
    var backTitle: String!
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resDescLabel: UILabel!
    @IBOutlet var resWebLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    var ad = ResourceAlchohol.myArray[mySection][myIndex].address
    var ci = ResourceAlchohol.myArray[mySection][myIndex].city
    var st = ResourceAlchohol.myArray[mySection][myIndex].state
    var zi = ResourceAlchohol.myArray[mySection][myIndex].zip
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = ResourceAlchohol.myArray[mySection][myIndex].name
        
        /*if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
            let viewController = ctrs[ctrs.count - 2] as! BackTitle
            let backButton = UIBarButtonItem()
            backButton.title = viewController.backTitle
            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        }*/
        
        resNameLabel.text = ResourceAlchohol.myArray[mySection][myIndex].name
        resCatLabel.text = ResourceAlchohol.myArray[mySection][myIndex].category
        resDescLabel.text = ResourceAlchohol.myArray[mySection][myIndex].addInfo
        resWebLabel.text = ResourceAlchohol.myArray[mySection][myIndex].website
        resContLabel.text = ResourceAlchohol.myArray[mySection][myIndex].contact
        if(ResourceAlchohol.myArray[mySection][myIndex].category == "Crisis Lines"){
            resAddressLabel.text = "";
        }
        else{
            resAddressLabel.text = ad + " " + ci + ", " + st + " " + zi
        }
    }
    
    
}
class ResourceSpecialty{
    var category: String
    var name: String
    var contact: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var addInfo: String
    static var myArray: [[Resource]]{
        var resources = [
            [Resource(category: "Specialty Counseling", name: "Art Therapy - The Art Station", contact: "817-921-2401", address: "1616 Park Place", city: "Fort Worth", state: "Texas", zip: "76110", website: "www.theartstation.org", addInfo: "Focus: Individual and group art therapy including assessments.; Clients:  Young children to adults; Insurance: Accept some insurance plans and may provide financial assistance.; Usually a waiting list."),
             Resource(category: "Specialty Counseling", name: "Creative Activities, Sandbox Therapy and Expressive Arts Therapy - Justin Bayles, LPC", contact: "580-889-0684", address: "598 S. Denton Tap Road, Suite 106", city: "Coppell", state: "Texas", zip: "75019", website: "", addInfo: "Focus: Sand Play Therapy, Jung-based, Cams-care (evidence based therapeutic framework for suicide-specific assessment and treatment of patients’ suicide risk); Age: 10 and up; Insurance: Does not accept insurance.; Evening and Saturday appointments"),
             Resource(category: "Specialty Counseling", name: "Creative Activities, Sandbox Therapy and Expressive Arts Therapy - Stephanie Coker", contact: "972-318-9272", address: "5168 Village Creek Dr., Ste 200", city: "Plano", state: "Texas", zip: "75093", website: "www.cokercounseling.com", addInfo: "Focus: Uses active teaching, role playing and creative activities to engage in meaningful, positive experiences that encourage change. Individual & family therapy; Age: Individual Therapy (Adolescent, Adult); Insurance: Does not accept insurance."),
             Resource(category: "Specialty Counseling", name: "Creative Activities, Sandbox Therapy and Expressive Arts Therapy - Dr. Kelly Webb Ferebee", contact: "972-754-1584", address: "598 S. Denton Tap Road, Suite 106", city: "Coppell", state: "Texas", zip: "75019", website: "www.kellywebbferebee.com", addInfo: "Focus: Expressive Art Therapy, Play Therapy, Individual Therapy (Adult, Adolescent, Child), Family Therapy, grief therapy; Age: Children-Adults (depending on modality); Insurance: Does not take insurance"),
             Resource(category: "Specialty Counseling", name: "Cultural Diversity:  India - Jessy Chatha, LCSW", contact: "972-393-1596; jessychatha@gmail.com", address: "413 W. Bethel Rd., Suite 100", city: "Coppell", state: "Texas", zip: "75019", website: "www.coppellcounseling.com", addInfo: "Focus: Individual, Family, and Group Therapy; Age: Child, Adolescent and Adult Services; Insurance: Contracts with some insurance companies"),
             Resource(category: "Specialty Counseling", name: "Equine Therapy - Sara Willerson – Horses, Heart & Soul", contact: "214-596-8300", address: "PO Box 1353", city: "Little Elm", state: "Texas", zip: "75068", website: "http://horsesheartandsoul.com", addInfo: "All sessions located at WolfTree Ranch, Pilot Point, TX; Focus: Equine facilitated psychotherapy and experiential learning focusing on self-awareness, social skills, and relationship building; Group sessions, workshops, team building; Age: Individual (children, teens, adult) sessions; Insurance: Does not take insurance"),
             Resource(category: "Specialty Counseling", name: "Gaming Addiction Counselors - Bruce Cameron", contact: "214-431-2032", address: "515 W. Southlake Blvd. Suite 172", city: "Southlake", state: "Texas", zip: "76092", website: "www.cameronlpc.com", addInfo: "Does not take insurance"),
             Resource(category: "Specialty Counseling", name: "Gaming Addiction Counselors - Mary Sanger - Insights Collaborative Therapy", contact: "214-706-0508", address: "5445 La Sierra Dr., Suite 204", city: "Dallas", state: "Texas", zip: "75231", website: "www.insightstherapy.com", addInfo: "Does not take insurance"),
             Resource(category: "Specialty Counseling", name: "Grief Therapy - El Tesoro de la Vida Grief Camp - Camp Fire First Texas", contact: "817-831-2111", address: "2700 Meacham Blvd.", city: "Fort Worth", state: "Texas", zip: "76132", website: "www.CampElTesoro.org", addInfo: "A week long camp, in the summer, for girls and boys, 6-17 years old, who have experienced a death of a loved one; Campers participate in traditional camp activities as well as work through the natural grieving process; There is an application process that usually begins in February; There is a fee and financial assistance for those who qualify; Camp is located near Granbury, Texas."),
             Resource(category: "Specialty Counseling", name: "Grief Therapy - Janet Dougherty, MS, LPC", contact: "214-538-4532", address: "907 W. Main Street", city: "Lewisville", state: "Texas", zip: "75067", website: "Jdoughertycounseling.com", addInfo: "Works with 12 year olds to adults; Takes Blue Cross, Blue Shield, Cigna Insurance"),
             Resource(category: "Specialty Counseling", name: "Grief Therapy - Reni Parker, LPC-S, RPT-S", contact: "469-583-1492", address: "10317 Sao Paulo Road", city: "Frisco", state: "Texas", zip: "75035", website: "www.myguidinglightcounseling.com", addInfo: "Specializes in grief counseling; Works with individuals who have been diagnosed with cancer and ALS and their families; Age: children, teens, adults, and seniors; Accepts many insurance plans. See website for more details."),
             Resource(category: "Specialty Counseling", name: "LGBTQ/TRANSGENDER YOUTH - Kim Hatley, M.Ed., LPC, LMFT - Coppell Counseling Center", contact: "972-393-1596 X 31", address: "413 West Bethel Rd. Suite 100", city: "Coppell", state: "Texas", zip: "75019", website: "", addInfo: "Focus: Experienced counselor in LGBTQ/Transgender issues. Works with individuals, couples and families. Co-founder of Coppell Counseling; Age: Teens and older; Insurance: Contracts with Cigna"),
             Resource(category: "Specialty Counseling", name: "LGBTQ/TRANSGENDER YOUTH - Youth First - Resource Center Community Center", contact: "214-540-4471", address: "5750 Cedar Springs Rd", city: "Dallas", state: "Texas", zip: "75235", website: "www.myresourcecenter.org/youth", addInfo: "Focus: Counseling services are in partnership with SMU. Provide parent support, educational programs, and recreational activities; Age: Counseling is available for teens in either individual, group or family settings; Insurance: Payment is sliding scale."),
             Resource(category: "Specialty Counseling", name: "LGBTQ/TRANSGENDER YOUTH - Dallas Hope Charities", contact: "", address: "PO Box 196006", city: "Dallas", state: "Texas", zip: "75219", website: "https://www.dallashopecharities.org", addInfo: "Focus: Provide services to LGBTQ+ youth; Age: 18-24 years old; Insurance: Non profit"),
             Resource(category: "Specialty Counseling", name: "Self-Injury - Lori Vann, M.A., LPC-S", contact: "214-270-6966", address: "2785 Rockbrook Drive, Suite 306", city: "Lewisville", state: "Texas", zip: "75067", website: "www.lorivanncounseling.com", addInfo: "Focus: Specializes in teen self-injury and works with parents. Also specializes in setting boundaries, assertiveness, self-esteem and anxiety issues. Offers individual, pre-marital, and family counseling; Age: 8 and older; Interns will see ages 6 and above; Insurance: Reduced fees for counseling with interns, under her supervision"),
             Resource(category: "Specialty Counseling", name: "Trauma and Abuse - Dr. Ron Garber", contact: "972-393-1596 X29", address: "413 W. Bethel Road, Suite 100", city: "Coppell", state: "Texas", zip: "75019", website: "www.coppellcounseling.com", addInfo: "Specializes in working with survivors of trauma and abuse; Works with adolescents, families and adults; Psychologist and Marriage and Family Therapist; Take the following insurance:  Cigna, PHCS, Value Options, Interface EAP, Medicare and Motorola")],
            ]
        return resources
    }
    
    
    init(category: String, name: String, contact: String, address: String, city: String, state: String, zip: String, website: String, addInfo: String) {
        self.category = category
        self.name = name
        self.contact = contact
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.website = website
        self.addInfo = addInfo
    }
    
}
class specificResourceSpecialtyViewController: UIViewController {
    var backTitle: String!
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resDescLabel: UILabel!
    @IBOutlet var resWebLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    var ad = ResourceSpecialty.myArray[mySection][myIndex].address
    var ci = ResourceSpecialty.myArray[mySection][myIndex].city
    var st = ResourceSpecialty.myArray[mySection][myIndex].state
    var zi = ResourceSpecialty.myArray[mySection][myIndex].zip
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = ResourceSpecialty.myArray[mySection][myIndex].name
        
        /*if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
            let viewController = ctrs[ctrs.count - 2] as! BackTitle
            let backButton = UIBarButtonItem()
            backButton.title = viewController.backTitle
            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        }*/
        
        resNameLabel.text = ResourceSpecialty.myArray[mySection][myIndex].name
        resCatLabel.text = ResourceSpecialty.myArray[mySection][myIndex].category
        resDescLabel.text = ResourceSpecialty.myArray[mySection][myIndex].addInfo
        resWebLabel.text = ResourceSpecialty.myArray[mySection][myIndex].website
        resContLabel.text = ResourceSpecialty.myArray[mySection][myIndex].contact
        if(ResourceSpecialty.myArray[mySection][myIndex].category == "Crisis Lines"){
            resAddressLabel.text = "";
        }
        else{
            resAddressLabel.text = ad + " " + ci + ", " + st + " " + zi
        }
    }
    
    
}
class ResourceDomesticViolence{
    var category: String
    var name: String
    var contact: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var addInfo: String
    static var myArray: [[Resource]]{
        var resources = [
            [Resource(category: "Domestic Violence", name: "Dallas Children’s Advocacy Center", contact: "214-818-2600", address: "5351 Samuell Blvd.", city: "Dallas", state: "Texas", zip: "75228", website: "www.dcac.org", addInfo: "Focus: Serves sexually abused children under age of 17. Multiple agency approach to the investigation, intervention and treatment of child sexual and physical abuse; Children are referred by CPS or law enforcement; They do not accept walk-ins but will help if someone can’t access services; Cost: No charge to clients."),
             Resource(category: "Domestic Violence", name: "Denton County Friends of the Family", contact: "24 Hour Crisis Line:  940-382-7273 or 800-572-4031", address: "4845 S. I-35 E, Suite 200", city: "Corinth", state: "Texas", zip: "76210", website: "www.dcfof.org", addInfo: "Focus: Serves those impacted by rape, sexual abuse and domestic violence, both witnesses and victims; Age: Children ages 3-17; Cost: No charge"),
             Resource(category: "Domestic Violence", name: "The Family Place", contact: "Main Phone Number:  214-559-2170 and 24 hour Crisis Hotline Number:  214-941-1991", address: "PO Box 7999", city: "Dallas", state: "Texas", zip: "75209", website: "www.familyplace.org", addInfo: "This organization provides everything family violence victims need to be safe. The services are free with the exception of Supervised Child Visitation and Battering Intervention and Prevention Program (BIPP). Services include 24-hour crisis hotline, children’s counseling, legal services, emergency shelter, incest recovery,, transitional housing, supervised child visitation, child development center, bettering intervention and prevention program (BIPP), community counseling, job readiness programs, and resale shop."),
             Resource(category: "Domestic Violence", name: "Genesis Women’s Shelter", contact: "214-389-7700 and 24 hour Hotline - 214-946-4357", address: "4411 Lemmon Ave., #201", city: "Dallas", state: "Texas", zip: "75219", website: "https://www.genesisshelter.org", addInfo: "This service is for women and children; All services are free; Services include 24 hour hotline, emergency shelter, transitional housing, counseling center, teen counseling, children’s play therapy, on site school, case management, parent classes, legal service, job readiness classes, and domestic violence education."),
             Resource(category: "Domestic Violence", name: "Irving Family Advocacy Center", contact: "972-721-6555", address: "600 W. Pioneer Dr.", city: "Irving", state: "Texas", zip: "75061", website: "www.cityofirving.org/984/Family-Advocacy-Center", addInfo: "Irving Family Advocacy Center provides free services and assistance to the residents of Irving; Services include counseling services ( 972-721-6555), bilingual services (972-721-6553), domestic violence counselor (972-721-6552), individual and family counseling, parenting classes, support groups, play therapy, information, referrals, safety planning, and legal and personal advocacy to victims of violent crimes."),
             Resource(category: "Domestic Violence", name: "Mosaic Family Service", contact: "214-821-5393 - 24 hour domestic violence and 214-823-4434 - 24 hour Crisis/Shelter Hotline and 214-823-1911 - 24 hour Trafficking Hotline", address: "4144 North Central Expressway, Suite 530", city: "Dallas", state: "Texas", zip: "74204", website: "www.mosaicservices.org", addInfo: "Mosaic is a safe haven for survivors of human rights abuses, including human trafficking and domestic violence.  Their mission is to support, educate and empower the multicultural individuals and families of North Texas.  All services are free. They offer support services in more than 25 languages; We serve trafficking survivors, family violence survivors, refugees; Our services include legal representation, shelter, counseling, client advocacy, community education. "),
             Resource(category: "Domestic Violence", name: "Texas Muslim Women’s Foundation", contact: "972-880-4192 - 24 hour hotline and 469-467-6241 - Office", address: "P.O. Box 863388", city: "Plano", state: "Texas", zip: "75086", website: "www.TMWF.org", addInfo: "Texas Muslim Women’s Foundation is a a 24-hour shelter for victims of family violence from all backgrounds. Their “Peace in the Home Social Services” and the “Peaceful Oasis Shelter” are the first and only comprehensive family violence programs in Texas that address the specific needs of the Muslim population.; Our services are free and confidential and can accommodate 14+ languages.; Our services include emergency hotline and shelter, case management, short-term financial assistance, job readiness, transitional housing, legal assistance, crisis counseling, and services for the elderly and disabled.")],
            ]
        return resources
    }
    
    
    init(category: String, name: String, contact: String, address: String, city: String, state: String, zip: String, website: String, addInfo: String) {
        self.category = category
        self.name = name
        self.contact = contact
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.website = website
        self.addInfo = addInfo
    }
    
}
class specificResourceDomesticViolenceViewController: UIViewController {
    var backTitle: String!
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resDescLabel: UILabel!
    @IBOutlet var resWebLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    var ad = ResourceDomesticViolence.myArray[mySection][myIndex].address
    var ci = ResourceDomesticViolence.myArray[mySection][myIndex].city
    var st = ResourceDomesticViolence.myArray[mySection][myIndex].state
    var zi = ResourceDomesticViolence.myArray[mySection][myIndex].zip
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = ResourceDomesticViolence.myArray[mySection][myIndex].name
        
        /*if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
            let viewController = ctrs[ctrs.count - 2] as! BackTitle
            let backButton = UIBarButtonItem()
            backButton.title = viewController.backTitle
            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        }*/
        
        resNameLabel.text = ResourceDomesticViolence.myArray[mySection][myIndex].name
        resCatLabel.text = ResourceDomesticViolence.myArray[mySection][myIndex].category
        resDescLabel.text = ResourceDomesticViolence.myArray[mySection][myIndex].addInfo
        resWebLabel.text = ResourceDomesticViolence.myArray[mySection][myIndex].website
        resContLabel.text = ResourceDomesticViolence.myArray[mySection][myIndex].contact
        if(ResourceDomesticViolence.myArray[mySection][myIndex].category == "Crisis Lines"){
            resAddressLabel.text = "";
        }
        else{
            resAddressLabel.text = ad + " " + ci + ", " + st + " " + zi
        }
    }
    
    
}
class ResourcePsychiatrists{
    var category: String
    var name: String
    var contact: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var addInfo: String
    static var myArray: [[Resource]]{
        var resources = [
            [Resource(category: "Psychiatrists", name: "Tae Y. Lee, M.D. - Lakeside Life Center", contact: "972-221-1741", address: "4100 Fairway Court, Bldg. 200", city: "Carrollton", state: "Texas", zip: "75010", website: "www.lakesidelifecenter.com", addInfo: "Focus: Specializes in child and adolescent psychiatry/childhood depression. Examples of conditions treated by Dr. Lee:  Depressive Disorders, Anxiety, Phobic Disorders, ADD, Autism, Bipolar, Eating Disorders, and Schizophrenia.; Insurance: Aetna, BCBS Blue Card PPO; BCBS TX Blue Choice and Cigna. (Call to confirm)"),
             Resource(category: "Psychiatrists", name: "Sandy Lotan, MD - Park Cities Psychiatry", contact: "214-522-7240", address: "5944 Luther Ln. #30", city: "Dallas", state: "Texas", zip: "75225", website: "www.parkcitiespsych.com", addInfo: "Child and Adolescent Psychiatrist; Commonly treats: ADD, Anxiety Dissociative and Somatoform Disorder; Anxiety Phobic Disorders, Depressive Disorders, Obsessive Compulsive Disorder (OCD); Insurance: Humana Insurance (Call to confirm)"),
             Resource(category: "Psychiatrists", name: "Uros Zrnic, M.D", contact: "972-393-1596 X 25", address: "413 W. Bethel Rd. #100", city: "Coppell", state: "Texas", zip: "75019", website: "www.coppellcounseling.com", addInfo: "Licensed child, adolescent, and adult psychiatrist; Area of expertise:  ADHD, Depression, Anxiety, Bipolar Disorder, Psychosis; Insurance: United Healthcare (Call to confirm)")],
            ]
        return resources
    }
    
    
    init(category: String, name: String, contact: String, address: String, city: String, state: String, zip: String, website: String, addInfo: String) {
        self.category = category
        self.name = name
        self.contact = contact
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.website = website
        self.addInfo = addInfo
    }
    
}
class specificResourcePsychiatristsViewController: UIViewController {
    var backTitle: String!
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resDescLabel: UILabel!
    @IBOutlet var resWebLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    var ad = ResourcePsychiatrists.myArray[mySection][myIndex].address
    var ci = ResourcePsychiatrists.myArray[mySection][myIndex].city
    var st = ResourcePsychiatrists.myArray[mySection][myIndex].state
    var zi = ResourcePsychiatrists.myArray[mySection][myIndex].zip
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = ResourcePsychiatrists.myArray[mySection][myIndex].name
        
        /*if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
            let viewController = ctrs[ctrs.count - 2] as! BackTitle
            let backButton = UIBarButtonItem()
            backButton.title = viewController.backTitle
            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        }*/
        
        resNameLabel.text = ResourcePsychiatrists.myArray[mySection][myIndex].name
        resCatLabel.text = ResourcePsychiatrists.myArray[mySection][myIndex].category
        resDescLabel.text = ResourcePsychiatrists.myArray[mySection][myIndex].addInfo
        resWebLabel.text = ResourcePsychiatrists.myArray[mySection][myIndex].website
        resContLabel.text = ResourcePsychiatrists.myArray[mySection][myIndex].contact
        if(ResourcePsychiatrists.myArray[mySection][myIndex].category == "Crisis Lines"){
            resAddressLabel.text = "";
        }
        else{
            resAddressLabel.text = ad + " " + ci + ", " + st + " " + zi
        }
    }
    
    
}
class ResourceFamilyAssistance{
    var category: String
    var name: String
    var contact: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var addInfo: String
    static var myArray: [[Resource]]{
        var resources = [
            [Resource(category: "Family Assistance", name: "CCA Lewisville", contact: "972-315-6544", address: "2202 S. Hwy 121", city: "Lewisville", state: "Texas", zip: "75067", website: "www.ccahelps.org", addInfo: "CCA provides comprehensive services to assist families in need.; Crisis Management and Relief Services; Food Pantry; Essential Training and Life Skills such as GED, ESL, Job Search and Readiness Skills, Computer Skills, and Financial Management; There is an application process. Applicants must meet specific criteria.; Resale shop at same address. Open Monday-Saturday 10:00 am - 8:00pm."),
             Resource(category: "Family Assistance", name: "Coppell Cares", contact: "972-462-0471 x 208", address: "420 S. Heartz Rd", city: "Coppell", state: "Texas", zip: "75019", website: "", addInfo: "Provides services to families in Coppell including short-term financial assistance, food, school supplies, activity fees, etc.; Provide referrals to other community resources that may be necessary for long term assistance"),
             Resource(category: "Family Assistance", name: "Irving Cares", contact: "972-721-9181", address: "440 South Nursery Rd., Suite 101", city: "Irving", state: "Texas", zip: "75060", website: "www.irvingcares.org", addInfo: "Irving Cares provides a variety of services to families in Irving including financial assistance for rent, mortgage, and utilities, prescriptions, food Pantry, and employment Services Program.; It is in the Human Services Building."),
             Resource(category: "Family Assistance", name: "Metrocrest Services", contact: "972-446-2100", address: "13801 Hutton Dr., Suite 150", city: "Farmers Branch", state: "Texas", zip: "75234", website: "www.metrocrestservices.org", addInfo: "Metrocrest provides a variety of services to families in Coppell including emergency Rent and utilities, food pantry, employment counseling, financial education, medical aid, and senior services.")],
            ]
        return resources
    }
    
    
    init(category: String, name: String, contact: String, address: String, city: String, state: String, zip: String, website: String, addInfo: String) {
        self.category = category
        self.name = name
        self.contact = contact
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.website = website
        self.addInfo = addInfo
    }
    
}
class specificResourceFamilyAssistanceViewController: UIViewController {
    var backTitle: String!
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resDescLabel: UILabel!
    @IBOutlet var resWebLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    var ad = ResourceFamilyAssistance.myArray[mySection][myIndex].address
    var ci = ResourceFamilyAssistance.myArray[mySection][myIndex].city
    var st = ResourceFamilyAssistance.myArray[mySection][myIndex].state
    var zi = ResourceFamilyAssistance.myArray[mySection][myIndex].zip
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = ResourceFamilyAssistance.myArray[mySection][myIndex].name
        
        /*if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
            let viewController = ctrs[ctrs.count - 2] as! BackTitle
            let backButton = UIBarButtonItem()
            backButton.title = viewController.backTitle
            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        }*/
        
        resNameLabel.text = ResourceFamilyAssistance.myArray[mySection][myIndex].name
        resCatLabel.text = ResourceFamilyAssistance.myArray[mySection][myIndex].category
        resDescLabel.text = ResourceFamilyAssistance.myArray[mySection][myIndex].addInfo
        resWebLabel.text = ResourceFamilyAssistance.myArray[mySection][myIndex].website
        resContLabel.text = ResourceFamilyAssistance.myArray[mySection][myIndex].contact
        if(ResourceFamilyAssistance.myArray[mySection][myIndex].category == "Crisis Lines"){
            resAddressLabel.text = "";
        }
        else{
            resAddressLabel.text = ad + " " + ci + ", " + st + " " + zi
        }
    }
    
    
}
class ResourceSupport{
    var category: String
    var name: String
    var contact: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var addInfo: String
    static var myArray: [[Resource]]{
        var resources = [
            [Resource(category: "Support Groups and Resources", name: "Alcoholic Anonymous Meetings - Coppell AA Group (Rejoice Lutheran Church)", contact: "972-693-4673", address: "532 E. Sandy Lake Rd", city: "Coppell", state: "Texas", zip: "75019", website: "", addInfo: ""),
             Resource(category: "Support Groups and Resources", name: "Alcoholic Anonymous Meetings - Friendship Group", contact: "972-436-9833", address: "359 Lake Park Road, Suite 129", city: "Lewisville", state: "Texas", zip: "75057", website: "www.friendshipaa.net", addInfo: ""),
             Resource(category: "Support Groups and Resources", name: "Alcoholic Anonymous Meetings - Dallas Intergroup Association", contact: "214-887-6699", address: "", city: "", state: "", zip: "", website: "www.aadallas.org", addInfo: "Helps a person find a group"),
             Resource(category: "Support Groups and Resources", name: "Al-Anon Meetings - Friendship Group", contact: "972-436-9833", address: "359 Lake Park Road, Suite 129", city: "Lewisville", state: "Texas", zip: "75057", website: "www.friendshipaa.net", addInfo: ""),
             Resource(category: "Support Groups and Resources", name: "Al-Anon Meetings - Al-Anon Family Groups", contact: "", address: "", city: "", state: "", zip: "", website: "www.al-anon.org", addInfo: "Includes Alateen"),
             Resource(category: "Support Groups and Resources", name: "Alzheimer’s - Alzheimer’s Organization/Greater Dallas", contact: "800-272-3900 and 24/7 Helpline 800-272-3900", address: "3001 Knox St., #200", city: "Dallas", state: "Texas", zip: "75204", website: "www.alz.org/greaterdallas", addInfo: "Help for someone facing Alzheimer’s; Help for caregivers; Support groups; Programs; Message Boards"),
             Resource(category: "Support Groups and Resources", name: "Alzheimer’s - Lewisville Alzheimer’s Caregivers Support - First Baptist Church Lewisville", contact: "214-394-4721 and bronwenzilmer@gmail.com", address: "1251 W. Valley Ridge Blvd.", city: "Lewisville", state: "Texas", zip: "75077", website: "", addInfo: "Designed to provide emotional, educational, and social support for caregivers.; Meet 1st Friday of every month; 10:00 am – 11:30 am; Room 223; Contact Bronwen Zilmer"),
             Resource(category: "Support Groups and Resources", name: "Alzheimer’s - The Oasis, an Early Stage Alzheimer’s/Dementia Program - First Baptist Church Lewisville", contact: "214-394-4721 and bronwenzilmer@gmail.com", address: "1251 W. Valley Ridge Blvd.", city: "Lewisville", state: "Texas", zip: "75077", website: "", addInfo: "Provides a meeting place for adults with early to mid-stage Alzheimer’s disease or related dementias.; Meetings will combine socialization, physical movement, music and memory stimulating activities.; Meet Thursday from 10 am – 2 pm.; They break during the summer months and follow LISD school calendar.; Contact Bronwen Zilmer-Program Coordinator"),
             Resource(category: "Support Groups and Resources", name: "Elderly - Life Transition Planning - Full Circle Advisors - Rob Novic, LCSW", contact: "214-586-0066", address: "520 East Central Parkway Bldg. 200, Ste 234", city: "Plano", state: "Texas", zip: "75074", website: "https://robnovick.com/consulting-services", addInfo: "A fee for service company in the life transition planning industry.; They develop a comprehensive portfolio that includes legal, financial, medical, and other key information for their client about their aging loved one(s)."),
             Resource(category: "Support Groups and Resources", name: "Cancer Support - Community North Texas (offers telehealth)", contact: "888-793-9355 (Toll Free Hotline)", address: "", city: "", state: "", zip: "", website: "www.cancersupporttexas.org", addInfo: ""),
             Resource(category: "Support Groups and Resources", name: "Cancer Support - Texas Health Dallas Cancer Center", contact: "214-345-8230", address: "8196 Walnut Hill Lane, LL10", city: "Dallas", state: "Texas", zip: "75231", website: "", addInfo: ""),
             Resource(category: "Support Groups and Resources", name: "Cancer Support - Texas Health Presbyterian Hospital Plano", contact: "972-981-7020", address: "6300 W. Parker Rd., MOB 2, Suite 129 A", city: "Plano", state: "Texas", zip: "75093", website: "", addInfo: "Completely free of charge and nonprofit, Cancer Support Community offers educational presentations, teen support programs, support and networking groups, children’s support program-Noogieland, workshops like yoga, meditation, Zumba, and creative arts, bereavement support for adults and children, and fun social events."),
             Resource(category: "Support Groups and Resources", name: "Grief Support Groups - El Tesoro de la Vida Grief Camp - Camp Fire", contact: "817-831-2111", address: "2700 Meacham Blvd.", city: "Fort Worth", state: "Texas", zip: "76137", website: "www.campfirefw.org", addInfo: "A one week grief camp for school age students (1st graders to 12 graders).; Death has had to occur.; Camp is held in the summer.; There is a fee, however, financial assistance is available.; There is an application process that begins in February."),
             Resource(category: "Support Groups and Resources", name: "Grief Support Groups - Journey of Hope", contact: "972-964-1600", address: "3900 West 15th St.", city: "Plano", state: "Texas", zip: "75075", website: "www.johgriefsupport.com", addInfo: "A non-profit organization.; They offer grief support to children, teens, and young adults and their caregivers or adult caregivers.; A non-profit organization dedicated to providing group grief support to children, adolescents and their parents or adult caregivers, who have lost a loved one. An intake meeting is required.; Participants learn to mourn the death or impending death of their loved ones.; There is no fee for this service."),
             Resource(category: "Support Groups and Resources", name: "Grief Support Groups - The Warm Place", contact: "817-870-2272", address: "809 Lipscomb Street", city: "Fort Worth", state: "Texas", zip: "76104", website: "www.thewarmplace.org", addInfo: "The Warm Place offers grief support for children 3 ½-18 years old and their families, as well as, young adults 19-25 years old, who have experienced the death of a loved one.; They never charge a fee.; No geographical limitations.; No time limits."),
             Resource(category: "Support Groups and Resources", name: "Grief Support Groups - Survivors of Suicide (SOS) - Suicide Crisis Center of North Texas", contact: "214-824-7020", address: "Suicide Crisis Center of North Texas", city: "Dallas", state: "Texas", zip: "", website: "www.sccenter.org", addInfo: "A unique program for those who have experienced the loss of a loved one to suicide.; After completion of the eight week course, ongoing support is offered through a program called Next Step.; Free service for anyone who lives in the community."),
             Resource(category: "Support Groups and Resources", name: "Mental Health Support - NAMI (National Alliance on Mental Illness)", contact: "214-341-7133", address: "2812 Swiss Avenue", city: "Dallas", state: "Texas", zip: "75204", website: "www.namidallas.org", addInfo: "Mental health organization dedicated to building better lives for those affected by mental illness.  They offer resources, education, support groups, and a veteran activity network."),
             Resource(category: "Support Groups and Resources", name: "Mental Health Support - Mental Health Grace Alliance", contact: "Living Grace Group: Contact healthmurry@yahoo.com and Family Grace Group: Contact mytrabuzz@gmail.com", address: "2435 Kinwest Pkwy", city: "Irving", state: "Texas", zip: "75063", website: "", addInfo: "Christian curriculum-based support groups for those dealing with mental illness or for those supporting someone with mental illness.; These support groups are typically offered through churches such as Irving Bible Church.; Living Grace Group: Support group for those who have mental illness.; Family Grace Group: Support group for family members of and individuals with mental illness.")],
            ]
        return resources
    }
    
    
    init(category: String, name: String, contact: String, address: String, city: String, state: String, zip: String, website: String, addInfo: String) {
        self.category = category
        self.name = name
        self.contact = contact
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.website = website
        self.addInfo = addInfo
    }
    
}
class specificResourceSupportViewController: UIViewController {
    var backTitle: String!
    @IBOutlet var resNameLabel: UILabel!
    @IBOutlet var resCatLabel: UILabel!
    @IBOutlet var resDescLabel: UILabel!
    @IBOutlet var resWebLabel: UILabel!
    @IBOutlet var resContLabel: UILabel!
    @IBOutlet var resAddressLabel: UILabel!
    var ad = ResourceSupport.myArray[mySection][myIndex].address
    var ci = ResourceSupport.myArray[mySection][myIndex].city
    var st = ResourceSupport.myArray[mySection][myIndex].state
    var zi = ResourceSupport.myArray[mySection][myIndex].zip
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTitle = ResourceSupport.myArray[mySection][myIndex].name
        
        /*if let ctrs = self.navigationController?.viewControllers, ctrs.count > 1 {
            let viewController = ctrs[ctrs.count - 2] as! BackTitle
            let backButton = UIBarButtonItem()
            backButton.title = viewController.backTitle
            self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        }*/
        
        resNameLabel.text = ResourceSupport.myArray[mySection][myIndex].name
        resCatLabel.text = ResourceSupport.myArray[mySection][myIndex].category
        resDescLabel.text = ResourceSupport.myArray[mySection][myIndex].addInfo
        resWebLabel.text = ResourceSupport.myArray[mySection][myIndex].website
        resContLabel.text = ResourceSupport.myArray[mySection][myIndex].contact
        if(ResourceSupport.myArray[mySection][myIndex].category == "Crisis Lines"){
            resAddressLabel.text = "";
        }
        else{
            resAddressLabel.text = ad + " " + ci + ", " + st + " " + zi
        }
    }
    
    
}

//
//  SearchViewController.swift
//  Mental Well-Being
//
//  Created by Zhaoyu Zhang on 1/15/22.
//

import UIKit

class SearchViewController: UIViewController {

    
    @IBAction func PsychologicalExp(_ sender: Any) {
        showAlertPsycho()
    }
    
    @IBAction func HealthComm(_ sender: Any) {
        showAlertHealthComm()
    }
    
    @IBAction func Papers(_ sender: Any) {
        showAlertPapers()
    }
    
    @IBOutlet weak var UserInputText: UITextField!
    
    func showAlertPsycho() {
        let alert = UIAlertController(title:"Database Chosen",message:"You will hear from Psychological Experts!",preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Dismiss", style: .cancel, handler: {action in
            print("tapped dismiss")}))
        present(alert,animated: true )
    }
    
    func showAlertHealthComm() {
        let alert = UIAlertController(title:"Database Chosen",message:"You will hear from peers in our Mental Health Community!",preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Dismiss", style: .cancel, handler: {action in
            print("tapped dismiss")}))
        present(alert,animated: true )
    }
    
    func showAlertPapers() {
        let alert = UIAlertController(title:"Database Chosen",message:"You will read scientific research papers!",preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Dismiss", style: .cancel, handler: {action in
            print("tapped dismiss")}))
        present(alert,animated: true )
    }
    
    func showSearch() {
        let searchContent = String(UserInputText.text!) ?? "Please fill in search content."
        let alert = UIAlertController(title:"You are searching for",message:searchContent,preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Dismiss", style: .cancel, handler: {action in
            print("tapped dismiss")}))
        present(alert,animated: true )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Search(_ sender: Any) {
        showSearch()
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

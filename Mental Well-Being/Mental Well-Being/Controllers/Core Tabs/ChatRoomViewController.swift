//
//  ChatRoomViewController.swift
//  Mental Well-Being
//
//  Created by Zhaoyu Zhang on 1/15/22.
//

import UIKit
import SwiftUI

class ChatRoomViewController: UIViewController {


    @IBOutlet var selectMoodButton: UIButton!
    @IBOutlet var moodsButtons: [UIButton]!
    
    func showButton() {
        moodsButtons.forEach {button in
            button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()
            
             
            
        }
    }
    
    
    @IBAction func selectMoodAction(_ sender: Any) {
        showButton()
    }
    
    @IBAction func moodButtonAction(_ sender: UIButton){
        showButton()
        switch sender.currentTitle{
        case "happy":
            selectMoodButton.setTitle("happy", for: .normal)
        
        case "angry":
            selectMoodButton.setTitle("angry", for: .normal)
        
        case "sad":
            selectMoodButton.setTitle("sad", for: .normal)
        
        case "fear":
            selectMoodButton.setTitle("fear", for: .normal)
        
        case "surprised":
            selectMoodButton.setTitle("surprised", for: .normal)
        
        case "disgust":
            selectMoodButton.setTitle("disgust", for: .normal)
        default:
            selectMoodButton.setTitle("-Select Your Mood-", for: .normal)
        }
    }
    
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

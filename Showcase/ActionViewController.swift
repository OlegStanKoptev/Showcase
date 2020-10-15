//
//  ActionViewController.swift
//  Showcase
//
//  Created by Oleg Koptev on 15.10.2020.
//

import UIKit

class ActionViewController: UIViewController {
    @IBOutlet weak var actionControl: UISegmentedControl!
    @IBOutlet weak var showMeButton: UIButton!
    @IBAction func performAction(_ sender: Any) {
        if actionControl.selectedSegmentIndex == 0 {
            let controller: UIAlertController = UIAlertController(title: "This is an alert",
                                                                  message: "You've created an alert view",
                                                                  preferredStyle: .alert)
            let okAction: UIAlertAction = UIAlertAction(title: "Okay",
                                                        style: .default) { (alert) in
                controller.dismiss(animated: true, completion: nil)
            }
            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
        } else {
            let controller: UIAlertController = UIAlertController(title: "This is an action sheet", message: "You've created an action sheet", preferredStyle: .actionSheet)
            let okAction: UIAlertAction = UIAlertAction(title: "Okay", style: .default) { (alert) in
                controller.dismiss(animated: true, completion: nil)
            }
            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
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

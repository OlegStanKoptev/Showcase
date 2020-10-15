//
//  SliderViewController.swift
//  Showcase
//
//  Created by Oleg Koptev on 15.10.2020.
//

import UIKit

class SliderViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redValue: UITextField!
    @IBOutlet weak var greenValue: UITextField!
    @IBOutlet weak var blueValue: UITextField!
    @IBAction func changeRed(_ sender: Any) {
        
    }
    @IBAction func changeGreen(_ sender: Any) {
    }
    @IBAction func changeBlue(_ sender: Any) {
    }
    
    var redColor: CGFloat = 1.0
    var greenColor: CGFloat = 1.0
    var blueColor: CGFloat = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redValue.delegate = self
        greenValue.delegate = self
        blueValue.delegate = self
        UpdateColor()
    }
    
    func UpdateColor() {
        self.view.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
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

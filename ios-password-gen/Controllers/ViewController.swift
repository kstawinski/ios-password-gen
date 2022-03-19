//
//  ViewController.swift
//  ios-password-gen
//
//  Created by Kacper Stawiński on 14/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bigLettersSwitch: UISwitch!
    @IBOutlet weak var smallLettersSwitch: UISwitch!
    @IBOutlet weak var numbersSwitch: UISwitch!
    @IBOutlet weak var specialCharsSwitch: UISwitch!
    @IBOutlet weak var lengthLabel: UILabel!

    var passwordModel = PasswordModel()
    var password: String?

    @IBAction func handleLengthChange(_ sender: UISlider) {
        let value = String(format: "%.0f", sender.value * 100)
        lengthLabel.text = value
    }

    @IBAction func handleCreateClick(_ sender: UIButton) {
        password = passwordModel.create(
            bigLetters: bigLettersSwitch.isOn,
            smallLetters: smallLettersSwitch.isOn,
            numbers: numbersSwitch.isOn,
            specialChars: specialCharsSwitch.isOn,
            length: Int(lengthLabel.text!)!
        )

        showResultModal()
    }
    
    func showResultModal () {
        self.performSegue(withIdentifier: "showResultModal", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showResultModal" {
            let destinationVC = segue.destination as! PreviewViewController
            destinationVC.passwordField = password!
        }
    }
}

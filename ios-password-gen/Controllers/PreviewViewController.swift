//
//  PreviewViewController.swift
//  ios-password-gen
//
//  Created by Kacper Stawiński on 15/03/2022.
//

import UIKit

class PreviewViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    
    var passwordField: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        passwordTextField.text = passwordField
    }
    
    @IBAction func handleTryAgainClick(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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

//
//  TwoViewController.swift
//  Birthdays_1
//
//  Created by Артём Синявцев on 08.12.2022.
//

import UIKit

class NewContactController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var imageAddImageView: UIImageView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var surnameNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
    
    @IBAction func addButtonAction(_ sender: UIButton) {
    let text = nameTextField.text
        surnameNameLabel.text = text
       
    }
    
}

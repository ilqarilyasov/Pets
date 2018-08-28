//
//  PetDetailViewController.swift
//  Pets
//
//  Created by Ilgar Ilyasov on 8/28/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PetDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    // Create new 'pet' variable which has optional 'Pet' structure and 'petController' which belongs 'PetController' class. To use then inside our functions
    var pet: Pet? {
        didSet { updateViews() }
    }
    
    var petController: PetController? {
        didSet { updateViews() }
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBAction func save(_ sender: Any) {
        
        // Assign user inputs to variables. Inputs could be empty so use Optional Binding
        guard let name = nameTextField.text,
              let age = Int(ageTextField.text!) else { return }
       
        // Use PetController functions to make changes
        if let pet = pet {
            petController?.updatePet(newPet: pet, name: name, age: age)
        } else {
            petController?.createNewPet(name: name, age: age)
        }
        
        // After clicking 'Save' button navigate to View Controler
        navigationController?.popViewController(animated: true)
        
    }
    
    // Don't know what this function does. Probably it updates View Controller Title.
    private func updateViews() {
        
        guard let unwrappedPet = pet else {
            title = "New Pet"
            return
        }
        
        title = unwrappedPet.name
        
        // Don't know why we use it
        guard isViewLoaded else { return }
    }

}

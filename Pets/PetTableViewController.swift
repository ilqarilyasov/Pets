//
//  PetTableViewController.swift
//  Pets
//
//  Created by Ilgar Ilyasov on 8/28/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PetTableViewController: UITableViewController {
    
    // Don't know why we use this
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    // Create a 'PetController' variable to use it in our functions
    var petController = PetController()

    // We will have just one section on our table view. So return could be 1
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // We need as much rows as our Pets array. So return the count of our 'pets' array
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petController.pets.count
    }
    
    // Showing all the row at the same time will consume lots of memory. So we need to reuse same row to be efficeint.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetCellOnTVC", for: indexPath)
        let pet = petController.pets[indexPath.row]
        cell.textLabel?.text = pet.name

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "AddSegue" {
            
            guard let destinationVC = segue.destination as? PetDetailViewController else { return }
            destinationVC.petController = petController
            
        } else if segue.identifier == "DetailSegue" {
            
            guard let destinationVC = segue.destination as? PetDetailViewController,
                  let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let pet = petController.pets[indexPath.row]
            destinationVC.petController = petController
            destinationVC.pet = pet
            
        }
    }

}

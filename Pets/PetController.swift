//
//  PetController.swift
//  Pets
//
//  Created by Ilgar Ilyasov on 8/28/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class PetController {
    
    private(set) var pets: [Pet] = []
    
    func createNewPet(name: String, age: Int) {
        
        let newPet = Pet(name: name, age: age)
        pets.append(newPet)
        
    }
    
    func updatePet(newPet: Pet, name: String, age: Int) {
        
        guard let index = pets.index(of: newPet) else { return }
        var updatedPet = newPet
        
        updatedPet.name = name
        updatedPet.age = age
        
        pets.remove(at: index)
        pets.insert(newPet, at: index)
        
    }
    
}

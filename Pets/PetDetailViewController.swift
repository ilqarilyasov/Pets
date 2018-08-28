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

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var namTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBAction func save(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  SingleDocController.swift
//  CoreDataDoc
//
//  Created by William Smith on 9/21/18.
//  Copyright © 2018 William Smith. All rights reserved.
//

import UIKit
import CoreData

class DocController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var contentField: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func saveDoc(_ sender: Any){
        let name = nameField.text
        let content = contentField.text
        let date = Date.init()
        
        if let document = Document.init(name: name, date: date, content: content ?? ""){
            do{
                let managedContent = document.managedObjectContext
                try managedContent?.save()
                self.navigationController?.popViewController(animated: true)
            }catch{
                print("failed")
            }
        }
    }

}

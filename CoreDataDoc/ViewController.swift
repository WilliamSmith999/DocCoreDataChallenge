//
//  ViewController.swift
//  CoreDataDoc
//
//  Created by William Smith on 9/21/18.
//  Copyright © 2018 William Smith. All rights reserved.
//

import UIKit
import CoreData

class viewController: UIViewController {
    
    var documents = [Document]()
    @IBOutlet var docTables: UITableView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchResquest: NSFetchRequest<Document> = Document.fetchRequest()
        do{
            documents = try managedContext.fetch(fetchResquest)
            docTables.reloadData()
        }catch{
            print("fetch failed")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}


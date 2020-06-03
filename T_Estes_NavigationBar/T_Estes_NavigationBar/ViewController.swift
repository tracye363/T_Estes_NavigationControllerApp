//
//  ViewController.swift
//  T_Estes_NavigationBar
//
//  Created by Tracy Estes on 5/29/20.
//  Copyright © 2020 Tracy Estes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            mainLabel.text = "Click for a list of my favorite authors and books."
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor.red
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "bookView", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bookVC = segue.destination as! SecondViewController
        bookVC.navigationItem.title = "Favorite Books"
        bookVC.receivingString = "Some of my favorite books."
    
    
    let customButton = UIBarButtonItem()
        customButton.title = "Home"
        navigationItem.backBarButtonItem = customButton
    }
}


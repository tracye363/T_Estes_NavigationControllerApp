//
//  SecondViewController.swift
//  T_Estes_NavigationBar
//
//  Created by Tracy Estes on 5/29/20.
//  Copyright © 2020 Tracy Estes. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    let bookArray = [["Dean Koontz", "The House of Thuder", "Twilight Eyes", "Intensity"], ["Stephen King", "The Stand", "It", "Pet Cemetary"], ["Patricia Cornwell", "Scarpetta", "Ripper", "Quantum"]]
    let bookCell = "bookCell"
    let indexArray = ["Dean Koontz", "Stephen King", "Patricia Cornwell"]
    
    @IBOutlet var bookView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookArray[section].count - 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: bookCell)
        if (cell == nil) {
            cell = UITableViewCell(
                style:UITableViewCell.CellStyle.default, reuseIdentifier: bookCell)
        }
        cell?.textLabel?.text = bookArray[indexPath.section][indexPath.row + 1]
        return cell!
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return bookArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return bookArray[section][0]
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return indexArray
    }

    
    @IBOutlet var labelShowMe: UILabel!
    var receivingString = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelShowMe.text = receivingString
        bookView.dataSource = self
        bookView.delegate = self
        bookView.sectionIndexColor = UIColor.black
        bookView.sectionIndexBackgroundColor = UIColor.magenta
        bookView.sectionIndexTrackingBackgroundColor = UIColor.darkGray
        // Do any additional setup after loading the view.
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

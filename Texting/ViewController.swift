//
//  ViewController.swift
//  Texting
//
//  Created by Amaan on 2018-08-31.
//  Copyright © 2018 amaancan. All rights reserved.
//

import UIKit

class TextingTableViewController: UITableViewController {
    
    private let cellID = "TextCell"

    
    private let texts = [
    "aouwww",
    "asdfsfsadsfasfasfdsafsafasdfasdfsdfsdfsdfsdfsafasdfsfsadfsfsdfgtgewrvgbvrefvewevevewvsfvs",
    " wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!wu snacks!",
    "UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  UDA UDA!  "
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Chat"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(TextingTableViewCell .self, forCellReuseIdentifier: cellID)
        tableView.separatorStyle = .none
    }
    
    // MARK: - TABLEVIEW DATASOURCE
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! TextingTableViewCell
        cell.msgLabel.text = texts[indexPath.row]
        
        return cell
    }

    


}


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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Chat"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
    }
    
    // MARK: - TABLEVIEW DATASOURCE
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = "UDA! Wu snacks! Wu snacks! Wu snacks! Wu snacks! Wu snacks! Wu snacks! Wu snacks! Wu snacks! Wu snacks! Wu snacks! Wu snacks! Wu snacks! Wu snacks! v Wu snacks! v Wu snacks! Wu snacks! v Wu snacks! v Wu snacks! v Wu snacks! Wu snacks! Wu snacks!"
        cell.textLabel?.numberOfLines = 0
        return cell
    }

    


}


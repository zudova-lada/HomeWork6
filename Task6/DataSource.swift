//
//  DataSource.swift
//  Task6
//
//  Created by Лада on 24/10/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource {
    
    private var data = [
        ["person"],
        ["General", "Privacy"],
        ["Password & Accounts"],
        ["Maps", "Safari", "News", "Siri", "Photos", "GameCenter"],
        ["ICloud", "Mail", "Notes", "Reminds", "Phone", "Messages"]]
    
    private var pictures:[UIImage] = [
        UIImage(named: "Person")!,
        UIImage(named: "Settings")!,
        UIImage(named: "Privacy")!,
        UIImage(named: "Password & Account")!,
        UIImage(named: "Maps")!,
        UIImage(named: "Safari")!,
        UIImage(named: "News")!,
        UIImage(named: "Siri")!,
        UIImage(named: "Photos")!,
        UIImage(named: "Game Center")!,
        UIImage(named: "ICloud")!,
        UIImage(named: "Mail")!,
        UIImage(named: "Notes")!,
        UIImage(named: "Reminds")!,
        UIImage(named: "Phone")!,
        UIImage(named: "Messages")!,
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        var imageNumber = 0
        for i in 0 ..< indexPath.section {
            imageNumber += data[i].count
        }
        imageNumber += indexPath.row
//        print(imageNumber)
        
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        cell.imageView?.image = pictures[imageNumber]
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return " "
        }
        return nil
    }
    

   
}

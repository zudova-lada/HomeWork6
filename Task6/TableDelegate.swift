//
//  TableDelegate.swift
//  Task6
//
//  Created by Лада on 24/10/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

import UIKit

class TableDelegate: NSObject, UITableViewDelegate {
    
    var navViewController: UINavigationController?
    var rowHeight: CGFloat = 50.0    
    
//    Изменяем высоту ячейки
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 1.5  * rowHeight
        }
        return rowHeight
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return rowHeight
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 0 {
            return 1.5 * rowHeight
        }
        return rowHeight
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
       
        let newView = ViewController()
        newView.indexPath = indexPath
        newView.cell = cell!
        navViewController?.pushViewController(newView, animated: true)
        
    }
}

//
//  ViewController.swift
//  ExpandingTableViewCell
//
//  Created by Petar Stoenchev on 3.12.20.
//

import UIKit


final  class ViewController: UITableViewController {
    
    private var dateCellExpanded: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   tableView.tableFooterView = UIView()
    }
}
extension ViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      //  if indexPath.row == 0 {
            if dateCellExpanded {
                dateCellExpanded = false
            } else {
                dateCellExpanded = true
            }
            tableView.beginUpdates()
            tableView.endUpdates()
       // }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
   //    if indexPath.row == 0 {
            if dateCellExpanded {
                return 250
            } else {
                return 50
            }
      //  }
        return 50
    }
    
}


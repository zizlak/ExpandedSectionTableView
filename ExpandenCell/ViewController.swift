//
//  ViewController.swift
//  ExpandenCell
//
//  Created by Aleksandr Kurdiukov on 08.07.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrayOfData = [ExpandedModel]()
    
    
    let headerID = String(describing: Header.self)
    
    private func tableViewConfig() {
        let nib = UINib(nibName: headerID, bundle: nil)
        tableView.register(nib, forHeaderFooterViewReuseIdentifier: headerID)
        
        tableView.tableFooterView = UIView()
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        class Ho{
            
        }
        
        arrayOfData = ModelData.arrayOfData
        
        tableViewConfig()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfData.count
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !arrayOfData[section].isExpanded {
            return 0
        }
        
        return arrayOfData[section].array.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayOfData[indexPath.section].array[indexPath.row]
        return cell
    }
    
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerID) as! Header
        
        header.configure(title: arrayOfData[section].title, section: section)
        header.rotateImage(arrayOfData[section].isExpanded)
        header.delegate = self
        
        return header
    }
    

    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    
}




extension ViewController: HeaderViewDelegate {
    func expandedSection(button: UIButton) {
        let section = button.tag
        
        let isExpanded = arrayOfData[section].isExpanded
        arrayOfData[section].isExpanded = !isExpanded
        
        tableView.reloadSections(IndexSet(integer: section), with: .automatic)
    }
}

//
//  Header.swift
//  ExpandenCell
//
//  Created by Aleksandr Kurdiukov on 08.07.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import UIKit

protocol HeaderViewDelegate: class {
    func expandedSection(button: UIButton)
}

class Header: UITableViewHeaderFooterView {
    
    weak var delegate: HeaderViewDelegate?
    
    @IBOutlet weak var headerButton: UIButton!


    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBAction func tapHeader(sender: UIButton) {
        delegate?.expandedSection(button: sender)
    }
    
    
         

    func configure(title: String, section: Int) {
            titleLabel.text = title
            headerButton.tag = section
        }
        
        func rotateImage(_ expanded: Bool) {
            if expanded {
                headerButton.imageView?.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            } else {
                headerButton.imageView?.transform = CGAffineTransform(rotationAngle: CGFloat.zero)
            }
        }
}

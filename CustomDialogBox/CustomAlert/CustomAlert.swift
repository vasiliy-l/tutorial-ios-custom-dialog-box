//
//  CustomAlert.swift
//  CustomDialogBox
//
//  Created by  William on 5/1/19.
//  Copyright © 2019 Vasiliy Lada. All rights reserved.
//

import UIKit

class CustomAlert: UIView {
    static let XIB_NAME = "CustomAlert"
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadXibAndFit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadXibAndFit()
    }
    
    func loadXibAndFit() {
        Bundle.main.loadNibNamed(CustomAlert.XIB_NAME, owner: self, options: nil)
        contentView.fixInView(self)
    }
    
}

extension UIView
{
    func fixInView(_ container: UIView!) -> Void{
        self.translatesAutoresizingMaskIntoConstraints = false // define constraints manually
        
        self.frame = container.frame
        container.addSubview(self)
        
        // define constraints to fill the container
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal,
                           toItem: container, attribute: .leading,
                           multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal,
                           toItem: container, attribute: .trailing,
                           multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal,
                           toItem: container, attribute: .top,
                           multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal,
                           toItem: container, attribute: .bottom,
                           multiplier: 1.0, constant: 0).isActive = true
    }
}

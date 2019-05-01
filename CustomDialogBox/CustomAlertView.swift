//
//  CustomAlertView.swift
//  CustomDialogBox
//
//  Created by  William on 5/1/19.
//  Copyright © 2019 Vasiliy Lada. All rights reserved.
//

import UIKit

class CustomAlertView: UIView, Modal {
    var backgroundView = UIView()
    var dialogView = UIView()
    
    convenience init(title: String, image: UIImage) {
        self.init(frame: UIScreen.main.bounds)
        
        // init background view
        backgroundView.frame = frame
        backgroundView.backgroundColor = UIColor.black
        backgroundView.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(didTappedOnBackgroundView))
        )
        addSubview(backgroundView)
        
        // init dialog view
        let dialogViewSideSize = frame.width - 64
        
        let titleLabel = UILabel(frame: CGRect(x: 8, y: 8,
                                               width: dialogViewSideSize - 16, height: 30))
        titleLabel.text = title
        titleLabel.textAlignment = .center
        dialogView.addSubview(titleLabel)
        
        let separatorLineView = UIView()
        separatorLineView.frame.origin = CGPoint(x: 0, y: titleLabel.frame.height + 8)
        separatorLineView.frame.size = CGSize(width: dialogViewSideSize, height: 1)
        separatorLineView.backgroundColor = UIColor.groupTableViewBackground
        dialogView.addSubview(separatorLineView)
        
        let imageView = UIImageView()
        imageView.frame.origin = CGPoint(x: 8,
                                         y: separatorLineView.frame.height +
                                              separatorLineView.frame.origin.y + 8)
        imageView.frame.size = CGSize(width: dialogViewSideSize - 16,
                                      height: dialogViewSideSize - 55)
        imageView.image = image
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 4
        imageView.clipsToBounds = true
        dialogView.addSubview(imageView)
        
        dialogView.frame.origin = CGPoint(x: 32, y: frame.height) // set init pos. under the screen
        dialogView.frame.size = CGSize(width: dialogViewSideSize,
                                       height: dialogViewSideSize) // squared
        dialogView.backgroundColor = UIColor.white
        dialogView.layer.cornerRadius = 6
        dialogView.clipsToBounds = true
        addSubview(dialogView)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTappedOnBackgroundView() {
        dismiss(animated: true)
    }
    
}

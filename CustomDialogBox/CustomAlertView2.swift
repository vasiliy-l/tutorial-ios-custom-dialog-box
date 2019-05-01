//
//  CustomAlertView2.swift
//  CustomDialogBox
//
//  Created by  William on 5/1/19.
//  Copyright © 2019 Vasiliy Lada. All rights reserved.
//

import UIKit

class CustomAlertView2: UIView, Modal {
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
        let alert = CustomAlert(frame: frame)
        alert.titleLabel.text = title
        alert.imageView.image = image
        dialogView = alert
        
        let dialogViewSideSize = frame.width - 64
        dialogView.frame.origin = CGPoint(x: 32, y: frame.height) // set init pos. under the screen
        dialogView.frame.size = CGSize(width: dialogViewSideSize,
                                       height: dialogViewSideSize) // squared
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


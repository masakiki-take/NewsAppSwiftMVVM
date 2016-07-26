//
//  SettingsViewController.swift
//  NewsAppSwiftMVVM
//
//  Created by TanakaJun on 2016/07/18.
//  Copyright © 2016年 edu.self. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var isHeaderMenuOpen = false
    
    @IBOutlet weak var headerMenuHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerMenuTitleLabel: UILabel!
    @IBOutlet weak var toggleHeaderMenuButton: UIButton!
    
    @IBAction func toggleHeaderMenu(sender: AnyObject) {
        isHeaderMenuOpen = !isHeaderMenuOpen
        
        headerMenuHeightConstraint.constant = isHeaderMenuOpen ? 200 : 60
        headerMenuTitleLabel.text = isHeaderMenuOpen ? "Add Channel" : "Channel List"
        
        UIView.animateWithDuration(0.43, delay: 0, options: [.CurveEaseOut], animations: {
            
            self.view.layoutIfNeeded()
            
            let angle = self.isHeaderMenuOpen ? CGFloat(M_PI_4) : 0
            
            self.toggleHeaderMenuButton.transform = CGAffineTransformMakeRotation(angle)
            
            }, completion: nil )
    }
    
}

//
//  UIViewController+Extension.swift
//  3DTouchDemo
//
//  Created by user on 27/12/18.
//  Copyright © 2018 Contus. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func tappedView(_ location: CGPoint) -> UIView? {
        var tappedView = UIView()
        for view in view.subviews {
            if view.frame.contains(location) {
                tappedView = view
            }
        }
        return tappedView
    }
}

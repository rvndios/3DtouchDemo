//
//  FirstViewController.swift
//  3DTouchDemo
//
//  Created by user on 26/12/18.
//  Copyright © 2018 Contus. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var data: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension FirstViewController {
     func previewActionItems() -> [UIPreviewActionItem] {
        let action1 = UIPreviewAction(title: "Button 1", style: .default) { (action, viewController) -> Void in
            print("Call Button1 action here")
        }
        let action2 = UIPreviewAction(title: "Button 2", style: .default) { (action, viewController) -> Void in
             print("Call Button2 action here")
        }
        return [action1, action2]
    }
}

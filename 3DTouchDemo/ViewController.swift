//
//  ViewController.swift
//  3DTouchDemo
//
//  Created by user on 26/12/18.
//  Copyright © 2018 Contus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if traitCollection.forceTouchCapability == .available {
            registerForPreviewing(with: self, sourceView: view)
        }
    }
}
extension ViewController: UIViewControllerPreviewingDelegate {
    func previewingContext(_ previewingContext: UIViewControllerPreviewing,
                           viewControllerForLocation location: CGPoint) -> UIViewController? {
         /******************* For UICollectionView ******************
         guard let indexPath = collectionView?.indexPathForItemAtPoint(location) else { return nil }
         guard let cell = collectionView?.cellForItemAtIndexPath(indexPath) else { return nil }
         /* return detailview controller to peek */
         ******************* For UITableView ******************
         guard let indexPath = tableView.indexPathForRow(at: location) else {
         return nil
         }
         guard let cell = tableView.cellForRow(at: indexPath) else {
         return nil
         } /* return detailview controller to peek */
        ******************* For other views (UIButton, UIView...) ******************
         guard  let viewTapped = self.tappedView(location) else {
         return nil
         }
          //Check view tapped by tag value and proceed
         if viewTapped.tag == 101 { /* return detailview controller to peek */ }
         *************************************/
        //Sample
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as?
            FirstViewController else { return nil }
        detailVC.preferredContentSize = CGSize(width: 0.0, height: 300)
        previewingContext.sourceRect = self.view.frame
        return detailVC
    }
    func previewingContext(_ previewingContext: UIViewControllerPreviewing,
                           commit viewControllerToCommit: UIViewController) {
        show(viewControllerToCommit, sender: self)
    }
}

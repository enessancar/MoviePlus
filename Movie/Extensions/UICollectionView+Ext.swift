//
//  UICollectionView+Ext.swift
//  Movie
//
//  Created by Enes Sancar on 11.05.2023.
//

import UIKit

extension UICollectionView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}

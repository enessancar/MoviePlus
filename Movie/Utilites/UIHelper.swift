//
//  UIHelper.swift
//  Movie
//
//  Created by Enes Sancar on 11.05.2023.
//

import UIKit

enum UIHelper {
    
    static func createFlowLayout() -> UICollectionViewFlowLayout {
        let flowLayout = UICollectionViewFlowLayout()
        
        let width = UIScreen.main.bounds.width
        let itemWidth = width / 2.15
        
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth * 1.5)
        flowLayout.scrollDirection = .horizontal
        return flowLayout
    }
}

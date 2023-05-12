//
//  SectionView.swift
//  Movie
//
//  Created by Enes Sancar on 11.05.2023.
//

import UIKit

class SectionView: UIStackView {
    
    private var containerStackView: UIStackView!
    private var titleLabel: TitleLabel!
    var collectionView: UICollectionView!
    private var title: String!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(containerStackView: UIStackView, title: String) {
        self.init(frame: .zero)
        self.containerStackView = containerStackView
        self.title = title
        
        configureSectionView()
        configureTitle()
        configureCollectionView()
    }
    
    private func configureSectionView() {
        containerStackView.addArrangedSubview(self)
        
        translatesAutoresizingMaskIntoConstraints = false
        axis = .vertical
        distribution = .fill
        spacing = 5
    }
    
    private func configureTitle() {
        titleLabel = TitleLabel(textAlignment: .left, fontSize: 26)
        addArrangedSubview(titleLabel)
        titleLabel.text = title
    }
    
    private func configureCollectionView() {
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UIHelper.createFlowLayout())
        addArrangedSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
}

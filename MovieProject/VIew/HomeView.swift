//
//  MainView.swift
//  MovieProject
//
//  Created by Терёхин Иван on 19.12.2024.
//

import UIKit

class MainView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = UIColor.init(hex: "242A32")
        
    }
    
    private func setupLayout() {
        addSubview(mainLabel)
        addSubview(allMoviesCollectionView)
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            mainLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            mainLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            
            
            
        ])
        
    }
    
    lazy var allMoviesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(MoviesCollectionViewCell.self, forCellWithReuseIdentifier: MoviesCollectionViewCell.reuseIndentifier)
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Что вы хотите сегодня посмотреть?"
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
}

//
//  MovieesCollectionViewCell.swift
//  MovieProject
//
//  Created by Терёхин Иван on 26.12.2024.
//

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    func configure(with images: UIImage) {
        image.image = images
    }
    
    private func setupLayout() {
        contentView.addSubview(image)
        
        NSLayoutConstraint.activate([
        image.topAnchor.constraint(equalTo: contentView.topAnchor),
        image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}

extension MoviesCollectionViewCell {
    static var reuseIndentifier: String  {
        return String(describing: self)
    }
}

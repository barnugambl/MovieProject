//
//  FavoritesView.swift
//  MovieProject
//
//  Created by Терёхин Иван on 09.01.2025.
//

import UIKit

class FavoritesView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView() 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = UIColor.init(hex: "242A32")
    
        
    }
    
}

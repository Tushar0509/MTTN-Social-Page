//
//  InstagramCell.swift
//  FindingMistake
//
//  Created by Tushar Elangovan on 8/10/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import Foundation
import UIKit

class Instagrampostscell: UICollectionViewCell{

 lazy var imageView: UIImageView = {
     let iv = UIImageView()
     iv.contentMode = .scaleAspectFill
     iv.layer.cornerRadius = 10
     iv.layer.masksToBounds = true
     iv.clipsToBounds = true
     return iv
 }()
 
 lazy var likescounter: UILabel = {
     let label = UILabel()
     label.font = UIFont.boldSystemFont(ofSize: 19)
     label.numberOfLines = 0
     label.textColor = .white
     label.textAlignment = .center
     return label
 }()
 
 override init(frame: CGRect) {
     super.init(frame: frame)
     setupLayout()
 }
    fileprivate func setupLayout(){
        addSubview(imageView)
        imageView.image = UIImage(named: "Image")
        imageView.addSubview(likescounter)
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        likescounter.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        likescounter.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        likescounter.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        likescounter.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 12).isActive = true
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


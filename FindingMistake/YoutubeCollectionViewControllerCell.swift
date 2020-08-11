//
//  YoutubeCollectionViewControllerCell.swift
//  FindingMistake
//
//  Created by Tushar Elangovan on 8/10/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import Foundation
import UIKit


class YoutubeCollectionViewCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    private let cellId = "cellID"
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Upcoming Events"
        label.font = UIFont.boldSystemFont(ofSize: 19)
        return label
    }()
    lazy var eventsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.delegate = self
        cv.dataSource = self
        cv.register(YoutubeCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        return cv
    }()
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! Youtubepostscell
        cell.imageView.image = UIImage(named: "Image")
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: frame.height - 44)
    }
    override init(frame: CGRect) {
        super .init(frame: frame)
        setuplayout()
    }
    fileprivate func setuplayout(){
        addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16).isActive = true
        addSubview(eventsCollectionView)
        eventsCollectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0).isActive = true
        eventsCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        eventsCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        eventsCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

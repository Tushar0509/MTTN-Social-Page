
//
//  MainViewController.swift
//  FindingMistake
//
//  Created by Tushar Elangovan on 8/11/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let cellId = "CellId"; //Unique cell id
       fileprivate let youtubeCellId = "youtubeCellId"
       fileprivate let instagramCellId = "instagramCellId"
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         switch indexPath.item {
                 case 0:
                     let cell = collectionView.dequeueReusableCell(withReuseIdentifier: youtubeCellId, for: indexPath)
                     return cell
                 case 1:
                     let cell = collectionView.dequeueReusableCell(withReuseIdentifier: instagramCellId, for: indexPath)
                     return cell
                 default:
                     return UICollectionViewCell()
                 }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        // Do any additional setup after loading the view.
    }
    func setupViews() {
        collectionView.register(YoutubeCollectionViewCell.self, forCellWithReuseIdentifier: youtubeCellId)
        
        collectionView.register(InstagramCollectionViewCell.self, forCellWithReuseIdentifier: instagramCellId)
    collectionView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0)
    }
    let collectionView: UICollectionView = { // collection view to be added to view controller
          let cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout()); //zero size with flow layout
          cv.translatesAutoresizingMaskIntoConstraints = false; //set it to false so that we can suppy constraints
        
          cv.backgroundColor = .yellow; // test
          return cv;
      }();
      // number of rows
      //size of each CollecionViewCell
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          switch indexPath.item {
          case 0:
            return CGSize(width: view.frame.width, height: 250)
          case 1:
            return CGSize(width: view.frame.width, height: 305)
          default:
            return CGSize(width: view.frame.width, height: 200)

          }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

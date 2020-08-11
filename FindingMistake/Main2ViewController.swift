//
//  Main2ViewController.swift
//  FindingMistake
//
//  Created by Tushar Elangovan on 8/11/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    let cellId = "CellId"; //Unique cell id

    fileprivate let youtubeCellId = "youtubeCellId"
    fileprivate let instagramCellId = "instagramCellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red; //just to test

       // collectionView.register(Cell.self, forCellWithReuseIdentifier: cellId) //register collection view cell class
        setupViews(); //setup all views
    }

    func setupViews() {

        view.addSubview(collectionView); // add collection view to view controller
        collectionView.delegate = self; // set delegate
        collectionView.dataSource = self; //set data source

        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true; //set the location of collection view
        collectionView.rightAnchor.constraint(equalTo:  view.rightAnchor).isActive = true; // top anchor of collection view
        collectionView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true; // height
        collectionView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true; // width

    }

    let collectionView: UICollectionView = { // collection view to be added to view controller
        let cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout()); //zero size with flow layout
        cv.translatesAutoresizingMaskIntoConstraints = false; //set it to false so that we can suppy constraints
        cv.backgroundColor = .yellow; // test
        return cv;
    }();

    //deque cell
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
//        cell.backgroundColor = .blue;
    }

    // number of rows
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2;
    }

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
}

// first UICollectionViewCell
class Cell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    fileprivate let youtubeCellId = "youtubeCellId"
    fileprivate let instagramCellId = "instagramCellId"
    let cellId = "CellId"; // same as above unique id

    override init(frame: CGRect) {
        super.init(frame: frame);

        setupViews();
    //    collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId); //register custom UICollectionViewCell class.
        // Here I am not using any custom class

    }
    
    func setupViews(){
        addSubview(collectionView);

        collectionView.delegate = self;
        collectionView.dataSource = self;

        collectionView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true;
        collectionView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true;
        collectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true;
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true;
    }

    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout();
        layout.scrollDirection = .horizontal; //set scroll direction to horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout);
        cv.backgroundColor = .blue; //testing
        cv.translatesAutoresizingMaskIntoConstraints = false;
        return cv;
    }();

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

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5;
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width, height: self.frame.height - 10);
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupview(){
        collectionView.register(YoutubeCollectionViewCell.self, forCellWithReuseIdentifier: youtubeCellId)
            
            collectionView.register(InstagramCollectionViewCell.self, forCellWithReuseIdentifier: instagramCellId)
        collectionView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0)
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



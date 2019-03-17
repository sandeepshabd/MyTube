//
//  ViewController.swift
//  MyTube
//
//  Created by Sandeep Shabd on 3/16/19.
//  Copyright © 2019 Sandeep. All rights reserved.
//

import UIKit

class MainViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = "MyTube"
        collectionView?.backgroundColor = UIColor.lightGray
        collectionView?.register(UICollectionViewCell.self,
                                 forCellWithReuseIdentifier:  "cellID")
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath)
        cell.backgroundColor = UIColor.blue
        return cell
    }
}


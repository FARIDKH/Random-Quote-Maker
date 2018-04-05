//
//  QuotesCollectionViewController.swift
//  Random Quotes
//
//  Created by Farid Qanbarov on 4/3/18.
//  Copyright © 2018 Farid Qanbarov. All rights reserved.
//

import UIKit
import ChameleonFramework


private let reuseIdentifier = "Cell"

class QuotesCollectionViewController: UICollectionViewController , UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        collectionView?.isPagingEnabled = true
        // Register cell classes
        self.collectionView!.register(QuoteCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
//        collectionView?.addSubview(pc)
//        // Do any additional setup after loading the view.
//        setupLayoutForPageControl()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
//    private let pc : UIPageControl = {
//        let pc = UIPageControl()
//        pc.currentPage = 0
//        pc.numberOfPages = 3
//        pc.pageIndicatorTintColor = UIColor.flatSkyBlue()
//        pc.currentPageIndicatorTintColor = UIColor.flatRedColorDark()
//        pc.translatesAutoresizingMaskIntoConstraints = false
//        return pc
//    }()
//    func setupLayoutForPageControl() {
//        let firstView = UIView()
//        firstView.backgroundColor = .red
//        let secondView = UIView()
//        secondView.backgroundColor = .black
//        let bottomContainer = UIStackView(arrangedSubviews: [firstView,pc,secondView])
//        bottomContainer.translatesAutoresizingMaskIntoConstraints = false
//        bottomContainer.distribution = .fillEqually
//        view.addSubview(bottomContainer)
//        NSLayoutConstraint.activate([
//            bottomContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            bottomContainer.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            bottomContainer.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor),
//            bottomContainer.heightAnchor.constraint(equalToConstant: 50)
//            ])
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    override func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

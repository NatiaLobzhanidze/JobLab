//
//  PageControllConfiguration.swift
//  JobLab
//
//  Created by Natia's Mac on 24.07.22.
//

import Foundation
import UIKit

extension WelcomePageViewController {
    
    func addPageController(){
        mypageControl.pageIndicatorTintColor = .blue
        mypageControl.currentPageIndicatorTintColor = .cyan
        mypageControl.numberOfPages = 3
        mypageControl.contentHorizontalAlignment = .left
        mypageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        mypageControl.heightAnchor.constraint(equalToConstant: 45).isActive = true
        mypageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
      }
    
    @IBAction func nextPage(_ sender: Any) {
        let vc = AuthorizationViewController()
    
        changePage(on: collectionView, Vc: self)
        self.present(vc, animated: true, completion: nil)
    }
    @IBAction func pageControllerAction(_ sender: UIPageControl) {
        let page: Int = sender.currentPage
        print(page)
           self.collectionView.scrollToItem(at: IndexPath(row: page, section: 0), at: .centeredHorizontally, animated: true)
        changePage(on: collectionView, Vc: self)
    }
    
}

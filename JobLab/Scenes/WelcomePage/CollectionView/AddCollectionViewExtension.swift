//
//  AddCollectionViewExtension.swift
//  JobLab
//
//  Created by Natia's Mac on 23.07.22.
//

import Foundation
import UIKit

extension WelcomePageViewController {
   
    func addCollectionView() {
              self.view.addSubview(self.collectionView)
//        self.collectionView.register(WelcomeCollectionViewCell.self, forCellWithReuseIdentifier: "WelcomeCollectionViewCell")
        self.collectionView.register(WelcomeCollectionViewCell.self, forCellWithReuseIdentifier: "WelcomeCollectionViewCell")
              self.collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.collectionView.topAnchor.constraint(equalTo: appNameLB.bottomAnchor, constant: 30).isActive = true
              self.collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
              self.collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        self.collectionView.bottomAnchor.constraint(equalTo: mypageControl.topAnchor, constant: -30).isActive = true
          }
}

extension WelcomePageViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return 3
      }

      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          let myCell = collectionView.deque(WelcomeCollectionViewCell.self, for: indexPath)
          let pagesArray = WelcomeModel.pages
          myCell.configure(with: pagesArray[indexPath.row])
          return myCell
      }
    
    private func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    
    //MARK: COMPUTE


    func changePage (on collectionView: UICollectionView, Vc: UIViewController){
        if currentPage == WelcomeModel.pages.count - 1  {
//            let sb = UIStoryboard(name: "Registration", bundle: nil)
//            let vc = sb.instantiateViewController(withIdentifier: "registrationNC")as! UINavigationController
//            vc.modalPresentationStyle = .fullScreen
//            Vc.present(vc, animated: true, completion: nil)
            print("succesfully done")

        } else {
            self.collectionView.isPagingEnabled = false
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            self.collectionView.reloadData()
            self.collectionView.isPagingEnabled = true
        }
    }
    
  
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        mypageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }

}

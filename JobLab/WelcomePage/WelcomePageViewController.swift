//
//  WelcomePageViewController.swift
//  JobLab
//
//  Created by Natia's Mac on 22.07.22.
//

import UIKit

class WelcomePageViewController: UIViewController {
    
    lazy var mypageControl: UIPageControl = {
        let mypageControl = UIPageControl()
        mypageControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mypageControl)
        mypageControl.addTarget(self, action: #selector(self.pageControllerAction(_:)), for: .touchUpInside)
        //mypageControl.addTarget(self, action: #selector(getter: nextPageBtn), for: .touchUpInside)
        return mypageControl
    }()
    @IBOutlet open weak var pageControl: UIPageControl? {
           didSet {
               pageControl?.addTarget(self, action: #selector(WelcomePageViewController.nextPage(_:)), for: .valueChanged)
           }
       }
    lazy var appNameLB: UILabel = {
        
        let appNameLB = UILabel()
        appNameLB.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(appNameLB)
        
        return appNameLB
    }()
    
     lazy var collectionView: UICollectionView = {
         let itemWidth = UIScreen.main.bounds.width/1.2
         let itemheight = UIScreen.main.bounds.height/1.5

            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: itemheight)
            layout.scrollDirection = .horizontal
            layout.minimumInteritemSpacing = 10
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.backgroundColor = .white
         collectionView.isScrollEnabled = true
         collectionView.isPagingEnabled = true
         collectionView.isPrefetchingEnabled = true
            collectionView.showsHorizontalScrollIndicator = false
         
            collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
            return collectionView
        }()
    
    @objc lazy var nextPageBtn: UIButton = {
       let nextPageBtn = UIButton()
        nextPageBtn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nextPageBtn)
        nextPageBtn.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        return nextPageBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        addNameLabel()
        addCollectionView()
        addPageController()
        addButton()
   
    }
    
  func addPageController(){
      mypageControl.numberOfPages = 3
      mypageControl.contentHorizontalAlignment = .left
      mypageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
      mypageControl.heightAnchor.constraint(equalToConstant: 45).isActive = true
      mypageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
    }
  
    @IBAction func nextPage(_ sender: Any) {
        changePage(on: collectionView, Vc: self)
    }
    @IBAction func pageControllerAction(_ sender: UIPageControl) {
           self.collectionView.scrollToItem(at: IndexPath(row: currentPage, section: 0), at: .centeredHorizontally, animated: true)
        changePage(on: collectionView, Vc: self)
    }
    
    var currentPage = 0 {
        didSet {
            mypageControl.currentPage = currentPage
            if currentPage >= WelcomeModel.pages.count - 1 {
                nextPageBtn.setTitle("START", for: .normal)
                print(currentPage)
            } else {
                nextPageBtn.setTitle("NEXT", for: .normal)
                print(currentPage)
            }
        }
    }


}



#if canImport(swiftUI) && DEBUG
import SwiftUI
struct PreviewViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerPreview {
            WelcomePageViewController()
        }.previewDevice("iPhone 12")
    }
}

struct ViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    let viewControllerBuilder: () -> UIViewController

    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }

    func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
#endif




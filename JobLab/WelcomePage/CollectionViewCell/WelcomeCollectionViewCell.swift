//
//  CollectionViewCell.swift
//  JobLab
//
//  Created by Natia's Mac on 22.07.22.
//

import UIKit

class WelcomeCollectionViewCell: UICollectionViewCell {
    
    lazy var welcomeImage: UIImageView = {
        let welcomeImage = UIImageView()
        return welcomeImage
    }()
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        return titleLabel
    }()
   
    //var identifier = "WelcomeCollectionViewCell"
    
           public override init(frame: CGRect) {
               super.init(frame: frame)
               commonInit()
           }

           public required init?(coder aDecoder: NSCoder) {
               super.init(coder: aDecoder)
               commonInit()
           }

    fileprivate func commonInit() {
        
               self.contentView.addSubview(self.welcomeImage)
        //self.welcomeImage.image = UIImage(named: "job1")
               self.welcomeImage.translatesAutoresizingMaskIntoConstraints = false
               self.welcomeImage.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
               self.welcomeImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
               self.welcomeImage.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
              // self.welcomeImage.bottomAnchor.constraint(equalTo: self.titleLabel.topAnchor, constant: -10).isActive = true
        self.welcomeImage.heightAnchor.constraint(equalToConstant: 300).isActive = true
        self.welcomeImage.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        
        self.contentView.addSubview(self.titleLabel)
               //self.welcomeImage.addSubview(self.nameLabel)
               self.titleLabel.textColor = .black
               self.titleLabel.textAlignment = .center
               self.titleLabel.numberOfLines = 0
               titleLabel.font = UIFont.systemFont(ofSize: 15)
        //titleLabel.text = "somesomesomesomesoem"
        titleLabel.isUserInteractionEnabled = true
        titleLabel.clipsToBounds = true
               self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
               self.titleLabel.topAnchor.constraint(equalTo: welcomeImage.bottomAnchor, constant: 10).isActive = true
               self.titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
               self.titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        self.titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
               self.titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
           }
    
    func configure(with item: WelcomeModel){
        self.welcomeImage.image = item.image
        self.titleLabel.text = item.title
    }
}

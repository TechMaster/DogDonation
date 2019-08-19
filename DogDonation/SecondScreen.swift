//
//  SecondScreen.swift
//  Stevia_Exercise
//
//  Created by Cuong  Pham on 8/13/19.
//  Copyright © 2019 Cuong  Pham. All rights reserved.
//

import UIKit
import Stevia

class SecondScreen: UIViewController {
    var mainScrollView : UIScrollView = UIScrollView()
    var subScrollView : UIScrollView = UIScrollView()
    
    var subView1 : UIView = UIView()
    var subView2 : UIView = UIView()
    var subView3 : UIView = UIView()
    var subView4 : UIView = UIView()
    
    var contentView1 : UIView = UIView()
    var contentView2 : UIView = UIView()
    var contentView3 : UIView = UIView()
    
    var contentImage1 : UIImageView = UIImageView()
    var contentImage2 : UIImageView = UIImageView()
    var contentImage3 : UIImageView = UIImageView()
    
    var contentLabel1 : UILabel = UILabel()
    var contentLabel2 : UILabel = UILabel()
    var contentLabel3 : UILabel = UILabel()
    
    var pawsWagsLabel : UILabel = UILabel()
    var browseAllLabel : UILabel = UILabel()
    var allLabel : UILabel = UILabel()
    var smallLabel : UILabel = UILabel()
    var mediumLabel : UILabel = UILabel()
    var largeLabel : UILabel = UILabel()
    
    var storyLabel : UILabel = UILabel()
    var readMoreLabel : UILabel = UILabel()
    var imageSubView3 : UIImageView = UIImageView()
    var titleLabel : UILabel = UILabel()
    var circleView : UIView = UIView()
    var nameLabel : UILabel = UILabel()
    var dateLabel : UILabel = UILabel()
    var timeLabel : UILabel = UILabel()
    var heartImage : UIImageView = UIImageView()
    
    var bannerView : UIView = UIView()
    var bannerLabel : UILabel = UILabel()
    var logoImage : UIImageView = UIImageView()
    
    var stackView : UIStackView = UIStackView()
    var pawlImage : UIImageView = UIImageView()
    var homeImage : UIImageView = UIImageView()
    var bowlImage : UIImageView = UIImageView()
    var searchImage : UIImageView = UIImageView()
    var ballImage : UIImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.sv(mainScrollView, subView4)
        autoLayoutSubView4()
        autoLayoutMainScrollView()
        mainScrollView.sv(subView1, subView2, subView3)
        autoLayoutSubview1()
        autoLayoutSubView2()
        autoLayoutSubView3()
        
    }
    
    fileprivate func autoLayoutMainScrollView(){
        mainScrollView.Top == view.safeAreaLayoutGuide.Top
        mainScrollView.centerHorizontally()
        mainScrollView.Width == view.Width
        mainScrollView.Bottom == subView4.Top
        mainScrollView.contentSize.height = 1000
        mainScrollView.backgroundColor = .white
    }
    
    fileprivate func autoLayoutSubview1(){
        subView1.Top == mainScrollView.Top + 60
        subView1.centerHorizontally()
        subView1.height(300).width(100%)
        subView1.backgroundColor = .clear
        
        subView1.sv(pawsWagsLabel, browseAllLabel, allLabel, smallLabel, mediumLabel, largeLabel, subScrollView)
        pawsWagsLabel.text = "Paws & Wags"
        pawsWagsLabel.textColor = .black
        pawsWagsLabel.font = .boldSystemFont(ofSize: 22)
        pawsWagsLabel.sizeToFit()
        pawsWagsLabel.Leading == subView1.Leading + 40
        pawsWagsLabel.Top == subView1.Top
        
        browseAllLabel.text = "Browse All"
        browseAllLabel.textColor = .black
        browseAllLabel.font = .systemFont(ofSize: 18)
        browseAllLabel.sizeToFit()
        browseAllLabel.Bottom == pawsWagsLabel.Bottom
        browseAllLabel.Trailing == subView1.Trailing - 20
        browseAllLabel.alpha = 0.5
        
        allLabel.text = "All"
        allLabel.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        allLabel.font = .boldSystemFont(ofSize: 18)
        allLabel.sizeToFit()
        allLabel.Leading == pawsWagsLabel.Leading
        allLabel.Top == pawsWagsLabel.Bottom + 50
        
        smallLabel.text = "Small"
        smallLabel.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        smallLabel.font = .boldSystemFont(ofSize: 18)
        smallLabel.sizeToFit()
        smallLabel.Leading == allLabel.Trailing + 40
        smallLabel.Bottom == allLabel.Bottom
        
        mediumLabel.text = "Medium"
        mediumLabel.textColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        mediumLabel.font = .boldSystemFont(ofSize: 18)
        mediumLabel.sizeToFit()
        mediumLabel.Leading == smallLabel.Trailing + 40
        mediumLabel.Bottom == allLabel.Bottom
        
        largeLabel.text = "Large"
        largeLabel.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        largeLabel.font = .boldSystemFont(ofSize: 18)
        largeLabel.sizeToFit()
        largeLabel.Leading == mediumLabel.Trailing + 40
        largeLabel.Bottom == allLabel.Bottom
        
        subScrollView.backgroundColor = .white
        subScrollView.Top == allLabel.Bottom + 10
        subScrollView.Leading == allLabel.Leading
        subScrollView.Trailing == subView1.Trailing
        subScrollView.height(150)
        subScrollView.contentSize.width = 1000
        
        subScrollView.sv(contentView1, contentView2, contentView3)
        
        contentView1.backgroundColor = .white
        contentView1.width(120)
        contentView1.Height == subScrollView.Height
        contentView1.Leading == subScrollView.Leading
        contentView1.centerVertically()
        
        contentView1.sv(contentImage1, contentLabel1)
        contentImage1.image = UIImage(named: "Dog")
        contentImage1.Top == contentView1.Top
        contentImage1.Width == contentView1.Width
        contentImage1.centerHorizontally()
        contentImage1.height(80%)
        
        contentLabel1.text = "Barkley"
        contentLabel1.textColor = .black
        contentLabel1.font = .systemFont(ofSize: 18)
        contentLabel1.sizeToFit()
        contentLabel1.Bottom == contentView1.Bottom - 8
        contentLabel1.centerHorizontally()
        
        contentView2.backgroundColor = .white
        contentView2.width(120)
        contentView2.Height == subScrollView.Height
        contentView2.Leading == contentView1.Trailing + 40
        contentView2.centerVertically()
        
        contentView2.sv(contentImage2, contentLabel2)
        contentImage2.image = UIImage(named: "Dog")
        contentImage2.Top == contentView1.Top
        contentImage2.Width == contentView1.Width
        contentImage2.centerHorizontally()
        contentImage2.height(80%)
        
        contentLabel2.text = "Barkley"
        contentLabel2.textColor = .black
        contentLabel2.font = .systemFont(ofSize: 18)
        contentLabel2.sizeToFit()
        contentLabel2.Bottom == contentView2.Bottom - 8
        contentLabel2.centerHorizontally()
        
        contentView3.backgroundColor = .white
        contentView3.width(120)
        contentView3.Height == subScrollView.Height
        contentView3.Leading == contentView2.Trailing + 40
        contentView3.centerVertically()
//
        contentView3.sv(contentImage3, contentLabel3)
        contentImage3.image = UIImage(named: "Dog")
        contentImage3.Top == contentView1.Top
        contentImage3.Width == contentView1.Width
        contentImage3.centerHorizontally()
        contentImage3.height(80%)
//
        contentLabel3.text = "Barkley"
        contentLabel3.textColor = .black
        contentLabel3.font = .systemFont(ofSize: 18)
        contentLabel3.sizeToFit()
        contentLabel3.Bottom == contentView3.Bottom - 8
        contentLabel3.centerHorizontally()
    }
    
    fileprivate func autoLayoutSubView2(){
        subView2.Width == view.Width
        subView2.centerHorizontally()
        subView2.height(400)
        subView2.Top == subView1.Bottom + 10
        
        subView2.sv(storyLabel, readMoreLabel, imageSubView3, titleLabel, circleView, nameLabel, dateLabel, timeLabel, heartImage)
        
        storyLabel.text = "Story"
        storyLabel.textColor = .black
        storyLabel.font = .boldSystemFont(ofSize: 22)
        storyLabel.sizeToFit()
        storyLabel.Top == subView2.Top
        storyLabel.Leading == subView2.Leading + 40
        
        readMoreLabel.text = "Read more"
        readMoreLabel.textColor = .black
        readMoreLabel.font = .systemFont(ofSize: 18)
        readMoreLabel.sizeToFit()
        readMoreLabel.Bottom == storyLabel.Bottom
        readMoreLabel.Trailing == subView2.Trailing - 20
        readMoreLabel.alpha = 0.5
        
        imageSubView3.image = UIImage(named: "vn")
        imageSubView3.Trailing == subView2.Trailing - 20
        imageSubView3.Leading == subView2.Leading + 40
        imageSubView3.Top == storyLabel.Bottom + 20
        imageSubView3.height(170)
        
        titleLabel.text = "What 'walkies' says about relationship with your dog"
        titleLabel.textColor = .black
        titleLabel.font = .boldSystemFont(ofSize: 18)
        titleLabel.sizeToFit()
        titleLabel.Top == imageSubView3.Bottom + 20
        titleLabel.numberOfLines = 2
        titleLabel.Leading == subView3.Leading + 60
        titleLabel.width(80%)
        
        circleView.backgroundColor = .gray
        circleView.size(40)
        circleView.Leading == titleLabel.Leading
        circleView.Top == titleLabel.Bottom + 40
        
        nameLabel.text = "Emma Johnson"
        nameLabel.textColor = .red
        nameLabel.sizeToFit()
        nameLabel.Leading == circleView.Trailing + 10
        nameLabel.Top == circleView.Top
        
        dateLabel.text = "Nov 26, 2018 - "
        dateLabel.textColor = .black
        dateLabel.font = .systemFont(ofSize: 15)
        dateLabel.sizeToFit()
        dateLabel.Leading == nameLabel.Leading
        dateLabel.Bottom == circleView.Bottom
        
        timeLabel.text = "3 min read"
        timeLabel.textColor = .black
        timeLabel.font = .systemFont(ofSize: 15)
        timeLabel.sizeToFit()
        timeLabel.Leading == dateLabel.Trailing
        timeLabel.Bottom == dateLabel.Bottom
        
        heartImage.image = UIImage(named: "heart")
        heartImage.width(30).height(30)
        heartImage.Trailing == readMoreLabel.Trailing - 20
        heartImage.Bottom == timeLabel.Bottom
    }

    fileprivate func autoLayoutSubView3(){
        subView3.Top == subView2.Bottom + 10
        subView3.Leading == subView2.Leading
        subView3.width(100%)
        subView3.height(150)
        
        subView3.sv(bannerView, bannerLabel, logoImage)
        
        bannerView.Leading == subView3.Leading + 40
        bannerView.Top == subView3.Top + 30
        bannerView.Trailing == subView3.Trailing - 20
        bannerView.height(80)
        bannerView.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        
        bannerView.sv(bannerLabel, logoImage)
        bannerLabel.text = "Save a life. Donate a shelter pet!"
        bannerLabel.font = .boldSystemFont(ofSize: 18)
        bannerLabel.textColor = .white
        bannerLabel.centerVertically()
        bannerLabel.Leading == bannerView.Leading + 10
        bannerLabel.sizeToFit()
        
        logoImage.image = UIImage(named: "logo")
        logoImage.size(70)
        logoImage.Leading == bannerLabel.Trailing + 10
        logoImage.Bottom == bannerView.Bottom + 15
    }
    
    fileprivate func autoLayoutSubView4(){
        subView4.Bottom == view.safeAreaLayoutGuide.Bottom
        subView4.Width == view.Width
        subView4.centerHorizontally()
        subView4.height(50)
        subView4.sv(stackView)
        
        stackView.Trailing == subView4.Trailing - 10
        stackView.Leading == subView4.Leading + 10
        stackView.Top == subView4.Top + 10
        stackView.Bottom == subView4.Bottom - 5
        
        stackView.addArrangedSubview(homeImage)
        stackView.addArrangedSubview(bowlImage)
        stackView.addArrangedSubview(pawlImage)
        stackView.addArrangedSubview(searchImage)
        stackView.addArrangedSubview(ballImage)
//
        stackView.axis = .horizontal
//
        homeImage.height(40)
        bowlImage.height(40)
        pawlImage.height(40)
        searchImage.height(40)
        ballImage.height(40)
        
        homeImage.image = UIImage(named: "home")
        bowlImage.image = UIImage(named: "bowl")
        pawlImage.image = UIImage(named: "paw")
        searchImage.image = UIImage(named: "search")
        ballImage.image = UIImage(named: "football")
        
        homeImage.contentMode = .scaleAspectFit
        bowlImage.contentMode = .scaleAspectFit
        pawlImage.contentMode = .scaleAspectFit
        searchImage.contentMode = .scaleAspectFit
        ballImage.contentMode = .scaleAspectFit
//
        stackView.distribution = .equalSpacing
        stackView.spacing = 20
    }
}

extension UIStackView {
    func changeBackgroundColor(color : UIColor){
        let backgroundLayer = CAShapeLayer()
        self.layer.insertSublayer(backgroundLayer, at: 0)
        backgroundLayer.path = UIBezierPath(rect: self.bounds).cgPath
        backgroundLayer.fillColor = color.cgColor
    }
}

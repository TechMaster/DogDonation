//
//  StoryViewController.swift
//  DogDonation
//
//  Created by Tung on 8/15/19.
//  Copyright © 2019 Tung. All rights reserved.
//



import UIKit
import Stevia
extension UIStackView {
    func addBackground(color: UIColor) {
        let subView = UIView(frame: bounds)
        subView.backgroundColor = color
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subView, at: 0)
    }
}
class StoryViewController: UIViewController {
    
    let scrollView : UIScrollView = {
        let scrollview = UIScrollView()
        scrollview.backgroundColor = .white
        
        return scrollview
    }()
    
    let containerView: UIView = {
        let customView = UIView()
        customView.backgroundColor = .white
        return customView
    }()
    
    let lblBack = UILabel()
    let lblLike = UILabel()
    let lblAttention = UILabel()
    let lblTitle = UILabel()
    let lblDog = UILabel()
    let lblBehaviour = UILabel()
    let lblBonding = UILabel()
    let lblLeash = UILabel()
    
    let imageCenter = UIImageView(image: UIImage(named: "dog3-1"))
    let btnFollow = UIButton()
    let lblContent = UILabel()
    
    let stackView = UIStackView()
    let icon1 = UIImageView(image: UIImage(named: "home"))
    let icon2 = UIImageView(image: UIImage(named: "bowl"))
    let icon3 = UIImageView(image: UIImage(named: "paw"))
    let icon4 = UIImageView(image: UIImage(named: "find"))
    let icon5 = UIImageView(image: UIImage(named: "ball"))
    
    
    let widthScreen = UIScreen.main.bounds.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        addControl()
        layoutView()
        
       
    }
    func addControl(){
        view.sv(
            scrollView.sv(
                containerView.sv(
                    lblBack,
                    lblLike,
                    lblAttention,
                    lblTitle,
                    lblDog,
                    lblBehaviour,
                    lblBonding,
                    lblLeash,
                    btnFollow,
                    lblContent,
                    imageCenter
                    
                )
            ),
            stackView
        )
        
        scrollView.Top == view.safeAreaLayoutGuide.Top + 10
        scrollView.Bottom == view.safeAreaLayoutGuide.Bottom
        view.layout(
            0,
            |-0-scrollView-0-|,
            0
        )
        
        stackView.Bottom == view.safeAreaLayoutGuide.Bottom
        view.layout(
            |-16-stackView-16-| ~ 40,
            0
        )
        
        
        scrollView.layout(
            0,
            |-0-containerView.width(widthScreen)-0-|,
            0
        )
        

        
        
        containerView.layout(
            0,
            |-16-lblBack-(>=50)-lblLike-16-|,
            20,
            |-16-lblAttention-(>=50)-|,
            10,
            |-16-lblTitle-20-|,
            20,
            |-16-lblDog.width(50)-10-lblBehaviour.width(90)-10-lblBonding.width(70)-10-lblLeash.width(50)-(>=20)-| ~ 30,
            20,
            |-16-imageCenter-16-| ~ 300,
            20,
            |-(>=50)-btnFollow.width(100)-16-| ~ 40,
            20,
            |-16-lblContent-16-|,
            0
            
        )
        
    }
    
    func layoutView(){
        lblBack.text = "←"
        lblLike.text = "847 ❤️"
        
        lblAttention.text = "BONDING WITH YOUR DOG"
        lblAttention.textColor = .red
        lblAttention.font = UIFont.systemFont(ofSize: 10)
        
        lblTitle.text = "What ‘walkies’ says about relationship with your dog?"
        lblTitle.font = UIFont.systemFont(ofSize: 18)
        lblTitle.numberOfLines = 2
        
        lblDog.text = "dog"
        lblDog.backgroundColor = .lightGray
        lblDog.layer.cornerRadius = 10
        lblDog.layer.masksToBounds = true
        lblDog.contentMode = .scaleAspectFit
        lblDog.textAlignment = .center
        lblDog.font = UIFont.systemFont(ofSize: 14)
        
        lblBehaviour.text = "behaviour"
        lblBehaviour.backgroundColor = .lightGray
        lblBehaviour.layer.cornerRadius = 10
        lblBehaviour.layer.masksToBounds = true
        lblBehaviour.textAlignment = .center
        lblBehaviour.font = UIFont.systemFont(ofSize: 14)
        
        lblBonding.text = "bonding"
        lblBonding.backgroundColor = .lightGray
        lblBonding.layer.cornerRadius = 10
        lblBonding.layer.masksToBounds = true
        lblBonding.textAlignment = .center
        lblBonding.font = UIFont.systemFont(ofSize: 14)
        
        lblLeash.text = "leash"
        lblLeash.backgroundColor = .lightGray
        lblLeash.layer.cornerRadius = 10
        lblLeash.layer.masksToBounds = true
        lblLeash.textAlignment = .center
        lblLeash.font = UIFont.systemFont(ofSize: 14)
        
        btnFollow.setTitle("Follow", for: .normal)
        btnFollow.backgroundColor = .red
        btnFollow.setTitleColor(.white, for: .normal)
        btnFollow.layer.cornerRadius = 10
        //btnFollow.layer.masksToBounds = true

        
       
        lblContent.numberOfLines = 0
        lblContent.lineBreakMode = .byWordWrapping
        lblContent.font = UIFont.systemFont(ofSize: 16)
        let attributedString = NSMutableAttributedString(string: "Dogs love “walkies”. And unless it’s pouring with rain and blowing a gale, so do their owners. But there’s much more to this daily routine than you might think.In fact, it's actually a complex process of negotiation, which reveals a great deal about our relationship with man's best friend . In many ways, the walk reflects the historical social order of human domination and animal submission. But research suggests that it also allows humans and dogs to negotiate their power within the relationship also allows humans and dogs to negotiate their power within the relationship also allows humans and dogs to negotiate their power within the relationship also allows humans and dogs to negotiate their power within the relationship ")
        
        // *** Create instance of `NSMutableParagraphStyle`
        let paragraphStyle = NSMutableParagraphStyle()
        
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 10// Whatever line spacing you want in points
        
        // *** Apply attribute to string ***
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        lblContent.attributedText = attributedString
        lblContent.textAlignment = .left
        
        
        
        stackView.addArrangedSubview(icon1)
         stackView.addArrangedSubview(icon2)
         stackView.addArrangedSubview(icon3)
         stackView.addArrangedSubview(icon4)
         stackView.addArrangedSubview(icon5)

        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 40
        stackView.addBackground(color: .white)
        
        
        
        
        
        
        
        
    }
    
    
    
    
}

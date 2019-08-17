//
//  donation25.swift
//  DogDonation
//
//  Created by Trung Le on 8/13/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit
import Stevia

class donation25: UIViewController {
    var subView1: UIView = UIView()
    var subView2: UIView = UIView()
    var subView3: UIView = UIView()
    var donate: UIButton = UIButton()
    var button1: UIButton = UIButton()
    var button2: UIButton = UIButton()
    var button3: UIButton = UIButton()
    var text1: UILabel = UILabel()
    var photo = UIImageView(image: UIImage(named: "dog1"))
//    var time: Timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.sv(
            subView1,
            subView2,
            subView3,
            donate
        )
        autoLayoutSubView1()
        autoLayoutSubView2()
        autoLayoutDonate()
        autoLayoutSubView3()
       
    }
    fileprivate func autoLayoutSubView1(){
        let text: UILabel = UILabel()
        let view1: UIView = UIView()
        
        subView1.Top == view.safeAreaLayoutGuide.Top + 32
        
        subView1.centerHorizontally().width(80%).height(40%)
        
        subView1.sv(view1,text,photo)
        
        view1.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.97, alpha:1.0)
        view1.centerVertically().height(90%).width(100%)
        
        photo.centerHorizontally().width(80%).height(60%)
        photo.bottom(0)
        
        text.text = "Save a life. \n Donate today."
        text.numberOfLines = 2
        text.textColor = UIColor(red:0.15, green:0.15, blue:0.15, alpha:1.0)
        text.font = .boldSystemFont(ofSize: 24)
        text.top(0)
        text.left(16)
        
        
    }
    
    fileprivate func autoLayoutSubView2(){
        
        let button4: UIButton = UIButton()
        
        subView2.Top == subView1.Bottom + 16
        
        subView2.centerHorizontally().width(80%).height(120)
        
        subView2.sv (button1,button2,button3,button4)
        
        button1.backgroundColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        button1.setTitle("$25", for: .normal)
        button1.titleLabel?.font = .boldSystemFont(ofSize: 24)
        button1.layer.cornerRadius = 10
        button1.width(30%).height(45%)
        button1.addTarget(self, action: #selector(button25(sender:)) , for: .touchUpInside)
        
        button2.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        button2.setTitle("$50", for: .normal)
        button2.titleLabel?.font = .boldSystemFont(ofSize: 24)
        button2.layer.cornerRadius = 10
        button2.centerHorizontally()
        button2.width(30%).height(45%)
        button2.addTarget(self, action: #selector(button50(sender:)) , for: .touchUpInside)
        
        button3.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        button3.setTitle("$100", for: .normal)
        button3.titleLabel?.font = .boldSystemFont(ofSize: 24)
        button3.layer.cornerRadius = 10
        button3.Right == subView2.Right
        button3.width(30%).height(45%)
        button3.addTarget(self, action: #selector(button100(sender:)) , for: .touchUpInside)
        

        button4.layer.borderWidth = 2
        button4.layer.borderColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0).cgColor
        button4.setTitle("Other amount", for: .normal)
        button4.setTitleColor(UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0), for: .normal)
        button4.titleLabel?.font = .boldSystemFont(ofSize: 28)
        button4.layer.cornerRadius = 10
        button4.Bottom == subView2.Bottom
        button4.width(100%).height(45%)
        
    }
    
    fileprivate func autoLayoutSubView3(){
        
        
        subView3.Top == subView2.Bottom
        subView3.Bottom == donate.Top
        
        subView3.centerHorizontally().width(80%)
        
        subView3.sv(text1)
        
        text1.text = "$25 can pay for a comfy dog bed"
        text1.textColor = .black
        text1.font = .systemFont(ofSize: 28)
        text1.numberOfLines = 3
        text1.textAlignment = .center
        text1.centerHorizontally().centerVertically().width(100%)
    }
    fileprivate func autoLayoutDonate(){
        
        donate.backgroundColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        donate.Bottom == view.safeAreaLayoutGuide.Bottom - 8
        
        donate.setTitle("Donate $25", for: .normal)
        donate.titleLabel?.font = .boldSystemFont(ofSize: 28)
        donate.centerHorizontally().width(80%).height(50)
        donate.layer.cornerRadius = 10
        donate.addTarget(self, action: #selector(donate(sender:)) , for: .touchUpInside)
        
    }
    
    @objc func button25(sender: UIButton) {
        button1.backgroundColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        button2.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        button3.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        photo.image = UIImage(named: "dog1")
        text1.text = "$25 can pay for a comfy dog bed"
        donate.setTitle("Donate $25", for: .normal)
    }
    @objc func button50(sender: UIButton) {
        button1.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        button2.backgroundColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        button3.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        photo.image = UIImage(named: "dog2")
        text1.text = "$50 can feed a large dog for a month"
        donate.setTitle("Donate $50", for: .normal)
    }
    @objc func button100(sender: UIButton) {
        button1.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        button2.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        button3.backgroundColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        photo.image = UIImage(named: "dog3")
        text1.text = "$100 can help pay for a medication for injured pet"
        donate.setTitle("Donate $100", for: .normal)
    }
    
    @objc func donate(sender: UIButton) {
        print("donate")
    }
    

}

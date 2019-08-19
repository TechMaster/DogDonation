


import UIKit
import Stevia

class Donate: UIViewController {
    var TopView: UIView = UIView()
    var DonateView: UIView = UIView()
    var photo = UIImageView(image: UIImage(named: "dog1"))
    var ButtonDonate: UIButton = UIButton()
    var Button25: UIButton = UIButton()
    var Button50: UIButton = UIButton()
    var Button100: UIButton = UIButton()
    var review: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.sv(TopView,DonateView)
        
        autoLayoutTopView()
        autoLayoutDonateView()
        
    }
    fileprivate func autoLayoutTopView(){
        let text: UILabel = UILabel()
        let background: UIView = UIView()
        
        TopView.Top == view.safeAreaLayoutGuide.Top + 32
        TopView.centerHorizontally().width(80%).height(40%)
        
        TopView.sv(background,text,photo)
        
        background.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.97, alpha:1.0)
        background.centerVertically().height(90%).width(100%)
        
        photo.centerHorizontally().width(80%).height(60%)
        photo.bottom(0)
        
        text.text = "Save a life. \n Donate today."
        text.numberOfLines = 2
        text.textColor = UIColor(red:0.15, green:0.15, blue:0.15, alpha:1.0)
        text.font = .boldSystemFont(ofSize: 24)
        text.top(0)
        text.left(16)
    }
    
    fileprivate func autoLayoutDonateView(){
        let TopViewDonate: UIView = UIView()
        let BetweenViewDonate: UIView = UIView()
        let ButtonOther: UIButton = UIButton()
        
        DonateView.Top == TopView.Bottom + 16
        DonateView.centerHorizontally().width(80%)
        DonateView.bottom(34)
        
        DonateView.sv(TopViewDonate,ButtonDonate, BetweenViewDonate)
        
        TopViewDonate.top(0)
        TopViewDonate.centerHorizontally().height(120).width(100%)
        
        TopViewDonate.sv(Button25,Button50,Button100,ButtonOther)
        
        Button25.backgroundColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        Button25.setTitle("$25", for: .normal)
        Button25.titleLabel?.font = .boldSystemFont(ofSize: 24)
        Button25.layer.cornerRadius = 10
        Button25.width(30%).height(45%)
        Button25.addTarget(self, action: #selector(onButton25Tap(sender:)) , for: .touchUpInside)
        
        Button50.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        Button50.setTitle("$50", for: .normal)
        Button50.titleLabel?.font = .boldSystemFont(ofSize: 24)
        Button50.layer.cornerRadius = 10
        Button50.centerHorizontally()
        Button50.width(30%).height(45%)
        Button50.addTarget(self, action: #selector(onButton50Tap(sender:)) , for: .touchUpInside)
        
        Button100.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        Button100.setTitle("$100", for: .normal)
        Button100.titleLabel?.font = .boldSystemFont(ofSize: 24)
        Button100.layer.cornerRadius = 10
        Button100.right(0)
        Button100.width(30%).height(45%)
        Button100.addTarget(self, action: #selector(onButton100Tap(sender:)) , for: .touchUpInside)
        
        
        ButtonOther.layer.borderWidth = 2
        ButtonOther.layer.borderColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0).cgColor
        ButtonOther.setTitle("Other amount", for: .normal)
        ButtonOther.setTitleColor(UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0), for: .normal)
        ButtonOther.titleLabel?.font = .boldSystemFont(ofSize: 28)
        ButtonOther.layer.cornerRadius = 10
        ButtonOther.bottom(0)
        ButtonOther.width(100%).height(45%)
        
        
        ButtonDonate.backgroundColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        ButtonDonate.bottom(0)
        ButtonDonate.setTitle("Donate $25", for: .normal)
        ButtonDonate.titleLabel?.font = .boldSystemFont(ofSize: 28)
        ButtonDonate.centerHorizontally().width(100%).height(50)
        ButtonDonate.layer.cornerRadius = 10
//        ButtonDonate.addTarget(self, action: #selector(donate(sender:)) , for: .touchUpInside)
        
        BetweenViewDonate.Bottom == ButtonDonate.Top
        BetweenViewDonate.Top == TopViewDonate.Bottom
        BetweenViewDonate.centerHorizontally().width(100%)
        BetweenViewDonate.sv(review)
        
        review.text = "$25 can pay for a comfy dog bed"
        review.textColor = .black
        review.font = .systemFont(ofSize: 28)
        review.numberOfLines = 3
        review.textAlignment = .center
        review.centerHorizontally().centerVertically().width(100%)
        
    }
    
    @objc func onButton25Tap(sender: UIButton) {
        Button25.backgroundColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        Button50.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        Button100.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        photo.image = UIImage(named: "dog1")
        review.text = "$25 can pay for a comfy dog bed"
        ButtonDonate.setTitle("Donate $25", for: .normal)
    }
    @objc func onButton50Tap(sender: UIButton) {
        Button25.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        Button50.backgroundColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        Button100.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        photo.image = UIImage(named: "dog2")
        review.text = "$50 can feed a large dog for a month"
        ButtonDonate.setTitle("Donate $50", for: .normal)
    }
    @objc func onButton100Tap(sender: UIButton) {
        Button25.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        Button50.backgroundColor = UIColor(red:1.00, green:0.74, blue:0.09, alpha:1.0)
        Button100.backgroundColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        photo.image = UIImage(named: "dog3")
        review.text = "$100 can help pay for a medication for injured pet"
        ButtonDonate.setTitle("Donate $100", for: .normal)
    }

}

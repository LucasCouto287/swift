// on July 18, 2019 by Abdullah Khan

/*:
 
 ## Sliding Card View
 An animated card view to prompt the user for an action
 
 ![prototype image designed in Sketch](Prototype.png)
 
 */

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    let cardView = UIView()
    let thumbnailImage = UIImageView()
    let titleLabel = UILabel()
    let watchButton = UIButton()
    let showHideButton = UIButton()
    
    var cardViewBottomConstraint: NSLayoutConstraint!
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
        
        setupCardView()
    }
    
    @objc func animateCard() {
        cardViewBottomConstraint.constant = -15
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    // sliding card view
    func setupCardView() {
        view.addSubview(cardView)
        cardView.backgroundColor = UIColor(red:0.22, green:0.25, blue:0.29, alpha:1.0)
        cardView.layer.cornerRadius = 32
        
        cardViewConstraints()
        
        setupShowHideButton()
        setupWatchButton()
        setupThumbnailImage()
        setupVideoTitle()
    }
    
    func cardViewConstraints() {
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        cardView.heightAnchor.constraint(equalToConstant: 355).isActive = true
        
        cardViewBottomConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
        cardViewBottomConstraint.isActive = true
    }
    
    // show/hide button
    func setupShowHideButton() {
        view.addSubview(showHideButton)
        
        showHideButton.setTitle("Animate", for: .normal)
        showHideButton.setTitleColor(.white, for: .normal)
        showHideButton.backgroundColor = UIColor(red: 0.04, green: 0.517, blue: 1.0, alpha: 1.0)
        showHideButton.layer.cornerRadius = 12
        
        showHideButton.addTarget(self, action: #selector(animateCard), for: .touchUpInside)

        showHideConstraints()
    }
    
    func showHideConstraints() {
        showHideButton.translatesAutoresizingMaskIntoConstraints = false
        showHideButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        showHideButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        showHideButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        showHideButton.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
    }
    
    // "Watch now" button
    func setupWatchButton() {
        cardView.addSubview(watchButton)
        
        watchButton.setTitle("Watch now", for: .normal)
        watchButton.titleLabel?.font =  UIFont.boldSystemFont(ofSize: 24)
        watchButton.setTitleColor(.white, for: .normal)
        watchButton.backgroundColor = UIColor(red: 0.999, green: 0.272, blue: 0.227, alpha: 1.0)
        watchButton.layer.cornerRadius = 20
        
        watchButtonContraints()
    }
    
    func watchButtonContraints() {
        watchButton.translatesAutoresizingMaskIntoConstraints = false
        watchButton.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
        watchButton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
        watchButton.heightAnchor.constraint(equalToConstant: 65).isActive = true
        watchButton.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -20).isActive = true
    }
    
    // video thumbnail
    func setupThumbnailImage() {
        cardView.addSubview(thumbnailImage)
        
        thumbnailImage.layer.cornerRadius = 12
        thumbnailImage.layer.masksToBounds = true
        thumbnailImage.image = UIImage(named: "desktop.png")
        
        thumbnailConstraints()
    }
    
    func thumbnailConstraints() {
        thumbnailImage.translatesAutoresizingMaskIntoConstraints = false
        
        thumbnailImage.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20).isActive = true
        thumbnailImage.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20).isActive = true
        
        thumbnailImage.heightAnchor.constraint(equalTo: thumbnailImage.widthAnchor, multiplier: 9.0/16.0).isActive = true
        thumbnailImage.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 20).isActive = true
        
    }
    
    // video title
    func setupVideoTitle() {
        cardView.addSubview(titleLabel)
        
        titleLabel.text = "2019 Desktop"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        titleLabel.textAlignment = .center
        
        videoTitleConstraints()
    }
    
    func videoTitleConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -10).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        titleLabel.topAnchor.constraint(equalTo: thumbnailImage.bottomAnchor, constant: 18).isActive = true
    }
 }

let vc = MyViewController()

// iPhone X
vc.preferredContentSize = CGSize(width: 375, height: 812)

// iPhone SE
//vc.preferredContentSize = CGSize(width: 320, height: 568)

PlaygroundPage.current.liveView = vc

//
//  ViewController.swift
//  AutolayoutCodeBased
//
//  Created by Keith Randell Gapusan on 20/05/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    fileprivate func programaticallySetupOfViews() {
        let redview = UIView()
        redview.backgroundColor = .red
        
        
        let blueView  = UIView()
        blueView.backgroundColor = .blue
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        [redview, blueView , greenView].forEach{ view.addSubview($0) }
        
        redview.anchor(top: view.safeAreaLayoutGuide.topAnchor,leading: nil, bottom: nil,  trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 12), size: .init(width: 100 , height: 100 ))
        
        blueView.anchor(top: redview.bottomAnchor, leading: nil, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 12, left: 0, bottom: 0, right: 12), size: .init(width: 100, height: 100))
        
        greenView.anchor(top: redview.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: blueView.bottomAnchor, trailing: redview.leadingAnchor , padding: .init(top: 0, left: 12, bottom: 0, right: 12))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        programaticallySetupOfViews()
        
        let firstNameLabel = UILabel()
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameLabel.text = "First Name"
        firstNameLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
        view.addSubview(firstNameLabel)
        
        let firstNameTextField = UITextField()
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.borderStyle = .roundedRect
        view.addSubview(firstNameTextField)
        
        
        let lastNameLabel = UILabel()
        lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
        lastNameLabel.text = "Last Name"
        view.addSubview(lastNameLabel)
        
        
        let lastNameTextField = UITextField()
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField.borderStyle = .roundedRect
        view.addSubview(lastNameTextField)
        
        let popStarLabel = UILabel()
        popStarLabel.translatesAutoresizingMaskIntoConstraints = false
        popStarLabel.text = "Pop star"
        view.addSubview(popStarLabel)
        
        
        let popStarTextField = UITextField()
        popStarTextField.translatesAutoresizingMaskIntoConstraints = false
        popStarTextField.borderStyle = .roundedRect
        view.addSubview(popStarTextField)
        
        
        let statesLabel = UILabel()
        statesLabel.translatesAutoresizingMaskIntoConstraints = false
        statesLabel.text = "How many statee"
        view.addSubview(statesLabel)
        
        
        let statesTextField = UITextField()
        statesTextField.translatesAutoresizingMaskIntoConstraints = false
        statesTextField.borderStyle = .roundedRect
        view.addSubview(statesTextField)
        
        
        let rapperLabel = UILabel()
        rapperLabel.translatesAutoresizingMaskIntoConstraints = false
        rapperLabel.text = "Rapper"
        view.addSubview(rapperLabel)
        
        let rapperTextField = UITextField()
        rapperTextField.translatesAutoresizingMaskIntoConstraints = false
        rapperTextField.borderStyle = .roundedRect
        view.addSubview(rapperTextField)
        
        let realAgeLabel  = UILabel()
        realAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        realAgeLabel.text = "Real Age"
        view.addSubview(realAgeLabel)
        
        
        let realAgeTextField = UITextField()
        realAgeTextField.translatesAutoresizingMaskIntoConstraints = false
        realAgeTextField.borderStyle = .roundedRect
        view.addSubview(realAgeTextField)
        
        
        let leftButton = UIButton()
        leftButton.translatesAutoresizingMaskIntoConstraints = false
        leftButton.backgroundColor = .gray
        leftButton.setTitle("Button", for: .normal)
        view.addSubview(leftButton)
        
        
        let rightButton = UIButton()
        rightButton.translatesAutoresizingMaskIntoConstraints = false
        rightButton.backgroundColor = .gray
        rightButton.setTitle("Button", for: .normal)
        view.addSubview(rightButton)
        
        let container = UILayoutGuide()
        view.addLayoutGuide(container)
        
        
        
        
        
    }
}
extension UIView{
    func anchor(top: NSLayoutYAxisAnchor?,  leading : NSLayoutXAxisAnchor?,   bottom : NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor? , padding: UIEdgeInsets = .zero, size: CGSize = .zero){
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top,  constant: padding.top).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
}






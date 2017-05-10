//
//  mainView.swift
//  swift-php-mysql
//
//  Created by Andreas Hafsaas on 09.05.2017.
//  Copyright © 2017 Andreas Hafsaas. All rights reserved.
//

import UIKit

class mainView: BaseView{
    
    /**
     * imageview with abra pokemonz
     *
     * @return: the imageview
     **/
    let mainImageView : UIImageView =
    {
        let iv = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        iv.image = UIImage(named: "abra.png")
        iv.translatesAutoresizingMaskIntoConstraints = false
       
        return iv
    }()
    
    let infoLabel : UILabel = {
        let label = UILabel()
        label.text = "Add a pokemon to favorites"
        label.textColor = UIColor.rgb(colorLiteralRed: 35, green: 34, blue: 28)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let idTextfield : UITextField = {
        let textfield = UITextField(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        textfield.placeholder = "Enter pokemon name here"
        textfield.textAlignment = .center
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        return textfield
    }()
    
    
    
    let nameTextfield : UITextField = {
        let textfield = UITextField(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        textfield.placeholder = "Enter pokemon name here"
        textfield.textAlignment = .center
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        return textfield
    }()
    
    let typeTextfield : UITextField = {
        let textfield = UITextField(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        textfield.placeholder = "Enter pokemon type here"
        textfield.textAlignment = .center
        textfield.translatesAutoresizingMaskIntoConstraints = false
  
        return textfield
    }()
    
    let statusIdView : UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
        //view.layer.cornerRadius = 7.5
        view.backgroundColor = UIColor.gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let statusNameView : UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
        //view.layer.cornerRadius = 7.5
        view.backgroundColor = UIColor.gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let statusTypeView : UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
        //view.layer.cornerRadius = 7.5
        view.backgroundColor = UIColor.gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let submitButton : UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        button.setTitle("add pokeman", for: .normal)
        button.tintColor = UIColor.white
        button.backgroundColor = UIColor.rgb(colorLiteralRed: 35, green: 34, blue: 28)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    
    }()

    override func setupViews() {
        
        //sets backgroundcolor to a delightful yellowish color.
        backgroundColor = UIColor.rgb(colorLiteralRed: 255, green: 212, blue: 71)
        
        //This is where all subviews are added.
        addSubview(mainImageView)
        addSubview(infoLabel)
        addSubview(idTextfield)
        addSubview(nameTextfield)
        addSubview(typeTextfield)
        addSubview(statusNameView)
        addSubview(statusTypeView)
        addSubview(statusIdView)
        addSubview(submitButton)
        
        /*
         constraints for all elements below
         */
        
        //set constraints for mainImageView.
        
        addConstraintsWithFormat(format: "V:|-100-[v0]", views: mainImageView)
        
        addConstraint(NSLayoutConstraint(item: mainImageView, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 150))
        addConstraint(NSLayoutConstraint(item: mainImageView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 150))
        addConstraint(NSLayoutConstraint(item: mainImageView, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        
        
        
        //set constraints for infolabel
        
        addConstraintsWithFormat(format: "H:|[v0]|", views: infoLabel)
        addConstraint(NSLayoutConstraint(item: infoLabel, attribute: .top, relatedBy: .equal, toItem: mainImageView, attribute: .bottom, multiplier: 1, constant: 20))
        
        
        // set constraints for nameTexdtfield
        
        addConstraint(NSLayoutConstraint(item: idTextfield, attribute: .top, relatedBy: .equal, toItem: infoLabel, attribute: .bottom, multiplier: 1, constant: 25))
        addConstraint(NSLayoutConstraint(item: idTextfield, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: idTextfield, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 50))
        
        // set constraints for statusnameview
        addConstraint(NSLayoutConstraint(item: statusIdView, attribute: .left, relatedBy: .equal, toItem: nameTextfield, attribute: .right, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: statusIdView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 35))
        addConstraint(NSLayoutConstraint(item: statusIdView, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 3))
        addConstraint(NSLayoutConstraint(item: statusIdView, attribute: .top, relatedBy: .equal, toItem: infoLabel, attribute: .bottom, multiplier: 1, constant: 25))
        
        
        
        // set constraints for nameTexdtfield
        
        addConstraint(NSLayoutConstraint(item: nameTextfield, attribute: .top, relatedBy: .equal, toItem: idTextfield, attribute: .bottom, multiplier: 1, constant: 25))
         addConstraint(NSLayoutConstraint(item: nameTextfield, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: nameTextfield, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 50))
        
        // set constraints for statusnameview
        addConstraint(NSLayoutConstraint(item: statusNameView, attribute: .left, relatedBy: .equal, toItem: nameTextfield, attribute: .right, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: statusNameView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 35))
        addConstraint(NSLayoutConstraint(item: statusNameView, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 3))
        addConstraint(NSLayoutConstraint(item: statusNameView, attribute: .top, relatedBy: .equal, toItem: idTextfield, attribute: .bottom, multiplier: 1, constant: 25))
        
        
        // set constraints for typeTextField
        addConstraint(NSLayoutConstraint(item: typeTextfield, attribute: .top, relatedBy: .equal, toItem: nameTextfield, attribute: .bottom, multiplier: 1, constant: 25))
        addConstraint(NSLayoutConstraint(item: typeTextfield, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: typeTextfield, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 50))
        
      
        // set constraints for statustypeview
        addConstraint(NSLayoutConstraint(item: statusTypeView, attribute: .left, relatedBy: .equal, toItem: typeTextfield, attribute: .right, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: statusTypeView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 35))
        addConstraint(NSLayoutConstraint(item: statusTypeView, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 3))
        addConstraint(NSLayoutConstraint(item: statusTypeView, attribute: .top, relatedBy: .equal, toItem: nameTextfield, attribute: .bottom, multiplier: 1, constant: 25))
        
        
        
        // set constraints for submitButton
        addConstraint(NSLayoutConstraint(item: submitButton, attribute: .top, relatedBy: .equal, toItem: typeTextfield, attribute: .bottom, multiplier: 1, constant: 35))
        addConstraint(NSLayoutConstraint(item: submitButton, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: submitButton, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 250))
        addConstraint(NSLayoutConstraint(item: submitButton, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 50))
        
        
    }

}

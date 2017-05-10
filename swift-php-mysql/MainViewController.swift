//
//  ViewController.swift
//  swift-php-mysql
//
//  Created by Andreas Hafsaas on 08.05.2017.
//  Copyright © 2017 Andreas Hafsaas. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {

    let main_view = mainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //hides navbar - just because.
        navigationController?.navigationBar.isHidden = true
        
        //setup controller
        setupController()
    
    }

    
    func setupController()
    {
    
        //adds subview aka main_view
        view.addSubview(main_view)
        
        //add constraints to subview
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: main_view)
        view.addConstraintsWithFormat(format: "V:|[v0]|", views: main_view)
        
        
        // add target to submitbutton
        main_view.submitButton.addTarget(self, action: #selector(createPokemon), for: .touchUpInside)
        
        // set uitextfield delegate to textfields
        main_view.nameTextfield.delegate = self
        main_view.typeTextfield.delegate = self
        main_view.idTextfield.delegate = self
    }
    
    /***************************
     *
     *
     *
     ***************************/
    
    func createPokemon()
    {
        if(main_view.nameTextfield.text == "" || main_view.typeTextfield.text == "" || main_view.idTextfield.text == "")
        {
            //well thats no fun is it?
            print("fill out everything")
        }else
        {
            print("starting creation process.")
            
            //created url 
            let requestURL = API().CREATE_POKEMON_URL
            
           // let request = NSMutableURLRequest(url: requestURL)
            var request = URLRequest(url: requestURL)
            
            
            //instructing the method to Post
            request.httpMethod = "POST"
            
            //getting the values from textfields
            let pokemonId   = main_view.idTextfield.text
            let pokemonName = main_view.nameTextfield.text
            let pokemonType = main_view.typeTextfield.text
            
            //formatting the paramteres, xcode complains if all of these are combined like below.
            //let postParameters = "id="+pokemonId+"&name="+pokemonName+"&type="+pokemonType
            
            let parameterId = "id="+pokemonId!
            let paramteterName = "&name="+pokemonName!
            let parameterType = "&type="+pokemonType!
            
            let postParameters = parameterId+paramteterName+parameterType
            
            // add parameters to the request body
            request.httpBody = postParameters.data(using: String.Encoding.utf8)
            
            let task = URLSession.shared.dataTask(with: request){
                data, response, error in
                
                if error != nil{
                    print("error is \(error)")
                    return;
                }
                
                //parsing the response
                do {
                    //converting resonse to NSDictionary
                    let myJSON =  try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? NSDictionary
                    
                    //parsing the json
                    if let parseJSON = myJSON {
                        
                        //creating a string
                        //var msg : String!
                        
                        //getting the json response
                        //msg = parseJSON["name"] as! String?
                        
                        //printing the response
                        print(parseJSON)
                        
                    }
                } catch {
                    print(error)
                }
                
            }
            //executing the task
            task.resume()
            
            
        }
    }
    
  
    // textfield delegates
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if(textField == main_view.nameTextfield)
        {
            if(textField.text == "")
            {
                main_view.statusNameView.backgroundColor = UIColor.red
            }else
            {
                main_view.statusNameView.backgroundColor = UIColor.green
            }
        }else if(textField == main_view.typeTextfield)
        {
            if(textField.text == "")
            {
                main_view.statusTypeView.backgroundColor = UIColor.red
            }else
            {
                main_view.statusTypeView.backgroundColor = UIColor.green
            }
        }else if(textField == main_view.idTextfield)
        {
            if(textField.text == "")
            {
                main_view.statusIdView.backgroundColor = UIColor.red
            }else
            {
                main_view.statusIdView.backgroundColor = UIColor.green
            }
        }
        else
        {
            print("could not locate which textfield that is active")
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == main_view.nameTextfield)
        {
            if(textField.text != "")
            {
                main_view.statusNameView.backgroundColor = UIColor.green
            }else
            {
                main_view.statusNameView.backgroundColor = UIColor.red
            }
        }else if(textField == main_view.typeTextfield)
        {
            if(textField.text != "")
            {
                main_view.statusTypeView.backgroundColor = UIColor.green
            }else
            {
                main_view.statusTypeView.backgroundColor = UIColor.red
            }
        }else if(textField == main_view.idTextfield)
        {
            if(textField.text != "")
            {
                main_view.statusIdView.backgroundColor = UIColor.green
            }else
            {
                main_view.statusIdView.backgroundColor = UIColor.red
            }
        }
        else
        {
            print("could not return")
        }
        
        textField.resignFirstResponder()
        return true
    }

}


//
//  FavoritesTableViewController.swift
//  swift-php-mysql
//
//  Created by Andreas Hafsaas on 09.05.2017.
//  Copyright © 2017 Andreas Hafsaas. All rights reserved.
//

import UIKit

class FavoritesTableViewController: UITableViewController {

    
    let cellId = "cellId"
    var pokemons: NSDictionary = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        getPokemons()
        
        
    }
    
    func getPokemons()
    {
        let requestURL = API().READ_ALL_POKEMON_URL
        
        // let request = NSMutableURLRequest(url: requestURL)
        var request = URLRequest(url: requestURL)
    
        //instructing the method to Post
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, err) in
            
            do
            {
                let getJSON = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:Any]
                
                
                
                for child in getJSON!
                {
                    if(child.key as! String == "message")
                    {
                        
                        let pokemonArr = child.value as! NSArray
                        
                        for pokemon in pokemonArr
                        {
                             //let pokemonArr2 = pokemon as Array
                             //print(pokemonArr2)
                            
                             print(pokemon)
                        }
                       
                        //SE NÆRMERE PÅ DEN ARRAY EXTENSIONEN!!!!!!
                        
                    }
                   
                    
                }
               
            }catch
            {
                print(error)
            }
            
            
        }
        task.resume()
        self.tableView.reloadData()
        //print(self.pokemons)
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)

        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  Seven
//
//  Created by CM Student on 3/19/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    var myFriendsArray = ["Kapolei Kalapawai", "Shiro's", "En Fuego"]
    
    //Restaurant Image Data
    var restaurantImageData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  
        self.title = "Eats"
        tableView.dataSource = self
        tableView.delegate = self
        
    //Part 6
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        
        let dict = NSDictionary(contentsOfFile: path!)
    
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myFriendsArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! dataViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
        }
    }
    
}


//
//  dataViewController.swift
//  Seven
//
//  Created by CM Student on 3/19/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class dataViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    @IBOutlet var kalapawaiImage: UIImageView!
    
    var imagePass: String?
    var textPass: String?
    var titlePass: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       self.view.backgroundColor = UIColor.cyan
        
        if let imageName = imagePass {
            kalapawaiImage.image = UIImage (named: imageName)
            
        }
        
        if let description = textPass {
            textView.text = description
        }
        
        if let title = titlePass {
            self.title = title
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

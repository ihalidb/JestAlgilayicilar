//
//  ViewController.swift
//  JestAlgilayicilar
//
//  Created by İbrahim Halid Bayrak on 29.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    var ny = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func gorselDegistir(){
        
        if ny == false{
            
            label.text = "New York"
            imageView.image = UIImage(named: "ny")
            ny = true
        } else {
            
            label.text = "San Francisco"
            imageView.image = UIImage(named: "sf")
            ny = false
        }
        
    }

}


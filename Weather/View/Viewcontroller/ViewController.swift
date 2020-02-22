//
//  ViewController.swift
//  Weather
//
//  Created by Hessam Mahdiabadi on 2/22/20.
//  Copyright © 2020 Hessam Mahdiabadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.font()
    }
    
    func font(){
        for family in UIFont.familyNames{
            let  sname :String = family
            print ("family : \(sname)")
            for name in UIFont.fontNames(forFamilyName: sname){
                print(" name : \(name)")
            }
            
        }
    }
    


}


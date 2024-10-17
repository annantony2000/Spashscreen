//
//  splash1ViewController.swift
//  splashscreen
//
//  Created by Ann Antony on 11/10/24.
//

import UIKit

class splash1ViewController: UIViewController {
    @IBOutlet weak var splbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline:   .now() + 5){
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let MainVC = storyboard.instantiateViewController(withIdentifier:"ViewController" )as!ViewController
            
            
            self.present(MainVC,animated: true){
                UIView.animate(withDuration: 1.0,delay: 0.5,options: .autoreverse, animations:{
                    
                    self.view.alpha=0
                }, completion: nil)
            }
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}

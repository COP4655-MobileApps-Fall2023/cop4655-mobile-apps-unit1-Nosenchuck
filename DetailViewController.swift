//
//  DetailViewController.swift
//  HW1
//
//  Created by Jacob Goldstein on 9/2/23.
//

import UIKit

class DetailViewController: UIViewController {
    var aboutme: Aboutme?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let aboutme = aboutme {
                print(aboutme.info)
            }

        if let aboutme = aboutme {
            coolimage.image = aboutme.image
            infolabel.text = aboutme.info
        }
    }
    
    
    @IBOutlet weak var coolimage: UIImageView!
    
    
    @IBOutlet weak var infolabel: UILabel!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

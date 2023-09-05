//
//  ViewController.swift
//  HW1
//
//  Created by Jacob Goldstein on 9/1/23.
//

import UIKit

class ViewController: UIViewController {
    let HelloThere = Aboutme(info: "Hello, there. My name is Obi Wan Kenobi, Jedi Master. My master was Qui Gon Jin, a maverick who believed in the will of the force. I had two padawans, Anakin Skywalker and Luke Skywalker. I was a member of the Jedi council during the great Jedi purge and never succumbed to the dark side.", image: UIImage(named: "hellothere")!)
    let YourMove = Aboutme(info: "Your move, is a phrase I said to my opponents. As a master of a defensive fighting technique, I let my enemies make the first move. My patience and skill aided my in defeating Darth Maul twice, General Grevious, Darth Vader, and numerous other advesaries.", image: UIImage(named: "obiwanpose")!)
    let  Jedi = Aboutme(info: "For over a thousand generations, the Jedi Knights were the guardians of peace and justice in the Old Republic. Before the dark times, before the Empire.", image: UIImage(named: "obianani")!)
    
    // Array for storing Aboutme info
    var aboutme: [Aboutme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        aboutme = [HelloThere, YourMove, Jedi]
    }
    
    
    @IBAction func didTapLabel(_ sender: UITapGestureRecognizer) {
        if let tappedLabel = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedLabel)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.aboutme = aboutme[0]
            } else if tappedView.tag == 1 {
                detailViewController.aboutme = aboutme[1]
            } else if tappedView.tag == 2 {
                detailViewController.aboutme = aboutme[2]
            }  else {
                print("no label was tapped, please check your selection.")
            }
        }
    }

}


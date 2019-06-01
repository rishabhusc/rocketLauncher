//
//  ViewController.swift
//  rocketLauncher
//
//  Created by Rishabh Khandelwal on 6/1/19.
//  Copyright © 2019 Rishabh Khandelwal. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!

    @IBOutlet weak var onLbl: UILabel!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var rocketStream: UIImageView!
    @IBOutlet weak var cloudHolder: UIView!
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on" , ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
    }
        
    }

    @IBAction func powerButtonPressed(_ sender: Any) {
        cloudHolder.isHidden=false
        darkBlueBG.isHidden=true
        powerButton.isHidden=true
        player.play()
        UIView.animate(withDuration: 2.3, animations:{ self.rocketStream.frame=CGRect(x:0,y:20,width:375,height:402)}){(finished) in
            self.hustleLbl.isHidden=false
            self.onLbl.isHidden=false
        }
        
        
        
    }
    
}


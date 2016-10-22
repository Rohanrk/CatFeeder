//
//  ViewController.swift
//  CatFeeder1
//
//  Created by Nidhi on 10/21/16.
//  Copyright © 2016 HackGT. All rights reserved.
//

import UIKit
import Alamofire
import AVFoundation

class ViewController: UIViewController {
    
    //var pianoSound = NSURL(fileURLWithPath: Bundle.mainBundle().pathForResource("C", ofType: "m4a"))
    var audioPlayer = AVAudioPlayer()


    @IBOutlet weak var FeedCat: UIButton!
    
    
    @IBOutlet weak var TreatCat: UIButton!
    
    
    @IBAction func FeedCat(_ sender: AnyObject) {
        audioPlayer.play()
        
        
        
        
    }
 
    @IBAction func TreatCat(_ sender: AnyObject) {
    }
    /*
    func setGradientBackground() {
        let colorTop =  UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
 */
 
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "happy.jpg")!)
        //setGradientBackground()
        // Do any additional setup after loading the view, typically from a nib.
        
        // address of the music file.
        let music = Bundle.main.path(forResource: "meow", ofType: "mp3")
        // copy this syntax, it tells the compiler what to do when action is received
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: music! ))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Make a request to CatFeeder server
    //Alamofire.request("")
    
    //
}


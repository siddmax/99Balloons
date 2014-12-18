//
//  ViewController.swift
//  99Balloons
//
//  Created by Saurav Sharma on 12/1/14.
//  Copyright (c) 2014 Sid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var balloonLabel: UILabel!
  
  var balloonArray:[Balloon] = []
  var index = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    var myBalloon = Balloon()
    
    for var i=0; i<100; i++ {
      myBalloon.image = randomPicture()
      myBalloon.balloonNumber = i
      balloonArray.append(myBalloon)
    }
    
    let myBalloonArray = balloonArray[index]
    
    imageView.image = myBalloonArray.image
    balloonLabel.text = "Balloons \(myBalloonArray.balloonNumber)"
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func randomPicture () -> UIImage {
    var array:[String] = ["BerlinTVTower.jpg", "RedBalloon1.jpg", "RedBalloon2.jpg", "RedBalloon3.jpg", "RedBalloon4.jpg"]
    
    var image:UIImage = UIImage(named: array[Int(arc4random_uniform(UInt32(4)))])!
    
    return image
  }

  @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
    index++
    
    let myBalloonArray = balloonArray[index]
    
    imageView.image = myBalloonArray.image
    balloonLabel.text = "Balloons \(myBalloonArray.balloonNumber)"
  }

}


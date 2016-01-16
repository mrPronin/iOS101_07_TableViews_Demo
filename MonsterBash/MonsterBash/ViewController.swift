//
//  ViewController.swift
//  MonsterBash
//
//  Created by Brian on 8/27/15.
//  Copyright © 2015 Razeware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var monsters = ["Astro", "Munchie", "Fluffy", "Squido"]
  
  @IBOutlet weak var imageView: UIImageView!

  @IBAction func changedSegment(sender: AnyObject) {
    let segmentedControl = sender as? UISegmentedControl
    if let index = segmentedControl?.selectedSegmentIndex {
      imageView.image = UIImage(named: monsters[index])
    }
  }

  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}


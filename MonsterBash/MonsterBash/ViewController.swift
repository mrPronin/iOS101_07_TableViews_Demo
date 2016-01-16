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

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return monsters.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MonsterCell", forIndexPath: indexPath)
        cell.textLabel?.text = monsters[indexPath.row]
        cell.imageView?.image = UIImage(named: monsters[indexPath.row])
        return cell
    }
}
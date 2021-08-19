//
//  ViewController.swift
//  MentorsBook
//
//  Created by Hazuki Tamura on 2021/08/19.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray:[Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index:Int = 0
    
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    
    
    @IBAction func next(){
        index = index + 1
        
            if index > 2{
                       index = 0
                   }
        setUI()
    }
    
    @IBAction func pre(){
        index = index - 1
          
            if index < 0{
                    index = 2
                }
        setUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃー", imageName: "taithi.jpg", course: "WecD,WebS"))
        
        setUI()
        
        
        // Do any additional setup after loading the view.
    }

    
  
    
    
}


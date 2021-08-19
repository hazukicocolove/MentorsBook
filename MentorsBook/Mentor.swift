//
//  Mentor.swift
//  MentorsBook
//
//  Created by Hazuki Tamura on 2021/08/19.
//

import UIKit

class Mentor{
    
    var name: String!
    var course: String!
    var imageName: String!
    
    //初期化、数値をもらって設定
    init(name:String, imageName:String, course:String) {
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
    
}

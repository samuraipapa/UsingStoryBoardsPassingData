//
//  Photo.swift
//  UsingStoryBoardsPassingData
//
//  Created by GrownYoda on 3/30/15.
//  Copyright (c) 2015 yuryg. All rights reserved.
//
//  Code started from http://www.lynda.com/Swift-tutorials/Step-two-Creating-custom-classes/185036/362323-4.html

// also see: http://www.lynda.com/Swift-tutorials/Defining-instantiating-classes/180105/194554-4.html

// as well as: https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html#//apple_ref/doc/uid/TP40014097-CH13-ID82


import Foundation


class Photo: NSObject {
    
    var name: String?
    var fileName : String?
    var notes: String?
    var realName = "The Real Name"
}

//
//  FeedData.swift
//  Todo List Practice
//
//  Created by Richard Tyran on 2/7/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit

let _mainData: FeedData = FeedData()

class FeedData: NSObject {
    
    var feedItems: [PFObject] = []
    
    class func mainData() -> FeedData {
        
        return _mainData
        
    }
    
    func refreshFeedItems(completion: () -> ()) {
        
        var feedQuery = PFQuery(className: "ToDoItem")
        
        feedQuery.findObjectsInBackgroundWithBlock { (objects, error) -> Void in
            
            if objects.count > 0 {
                
                self.feedItems = objects as [PFObject]
                
            }
            
            completion()
            
        }
        
    }
    
}
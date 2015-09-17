//
//  Post.swift
//  myHood
//
//  Created by Jonathan Wood on 9/17/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import Foundation

class Post {
    private var _imagePath: String
    private var _title: String
    private var _postDesc: String
    
    init(imgPath: String, title: String, description: String) {
        self._imagePath = imgPath
        self._title = title
        self._postDesc = description
    }
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
}
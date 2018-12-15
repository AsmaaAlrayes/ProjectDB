//
//  CustomCell.swift
//  ProjectDB
//
//  Created by Asmaa Alrayes on 12/15/18.
//  Copyright © 2018 Asmaa Alrayes. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    var message : String?
    var mainimage : UIImage?
    
    var messageView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    var mainimageVIew : UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(mainimageVIew)
        self.addSubview(messageView)
        
        mainimageVIew.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainimageVIew.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainimageVIew.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainimageVIew.widthAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
        messageView.leftAnchor.constraint(equalTo: self.mainimageVIew.rightAnchor).isActive = true
        messageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        messageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        if let message = message {
            messageView.text = message
        }
        if let image = mainimage {
            mainimageVIew.image = image
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
//
//  CustomCell.swift
//  Pasha
//
//  Created by MacBook on 02.07.16.
//  Copyright © 2016 MacBook. All rights reserved.
//

import UIKit

class CustomItemCell: UITableViewCell {
    
    @IBOutlet weak var cellButton: UIButton!
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellSubtitle: UILabel!
    
    static var delegate : AddToFavorites?
    var item : Item?
    
    func setItem(newItem : Item) {
        item = newItem
    }
    
    @IBAction func addToFavourite(sender: AnyObject) {
        
        CustomItemCell.delegate?.addToFavorites(item!)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

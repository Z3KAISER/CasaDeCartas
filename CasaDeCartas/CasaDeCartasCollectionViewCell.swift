//
//  CasaDeCartasCollectionViewCell.swift
//  Pods
//
//  Created by Andrew Wilhelm on 8/14/16.
//
//

import UIKit

public class CasaDeCartasCollectionViewCell: UICollectionViewCell {
    
    override public func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes) {
        let center = layoutAttributes.center
        let animation = CABasicAnimation(keyPath: "position.y")
        animation.toValue = center.y
        animation.duration = 0.3
        animation.timingFunction = CAMediaTimingFunction(controlPoints: 0.8, 2.0, 1.0, 1.0)
        layer.addAnimation(animation, forKey: "position.y")
        
        super.applyLayoutAttributes(layoutAttributes)
    }
    
}
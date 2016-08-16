//
//  CasaDeCartasCollectionViewController.swift
//  Pods
//
//  Created by Andrew Wilhelm on 8/14/16.
//
//

import UIKit

private let reuseIdentifier = "CasaDeCartasCell"

public protocol CasaDeCartasViewControllerDelegate  {
    func cardDidChangeState(cardIndex: Int)
}

public class CasaDeCartasCollectionViewController: UICollectionViewController, UIGestureRecognizerDelegate {
    
    /* The speed of animation. */
    private let animationSpeedDefault: Float = 0.9
    
    public var cardStackDelegate: CasaDeCartasViewControllerDelegate? {
        didSet {
            layout.delegate = cardStackDelegate
        }
    }
    
    public var layout: CasaDeCartasCollectionViewLayout { return collectionViewLayout as! CasaDeCartasCollectionViewLayout }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setAnimationSpeed(animationSpeedDefault)
        layout.gesturesEnabled = true
        collectionView!.scrollEnabled = false
        setCardSize(CGSizeMake(collectionView!.bounds.width - 40, 2*collectionView!.bounds.height/3))
        
    }
    
    override public func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override public func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfCards()
    }
    
    override public func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return card(collectionView, cardForItemAtIndexPath: indexPath)
    }
    
    //This method should be called after adding new card
    public func newCardWasAdded() {
        if layout.newCardShouldAppearOnTheBottom {
            layout.newCardDidAdd(numberOfCards() - 1)
        } else {
            layout.newCardDidAdd(0)
        }
    }
    
    //method to change animation speed
    public func setAnimationSpeed(speed: Float) {
        collectionView!.layer.speed = speed
    }
    
    //method to set size of cards
    public func setCardSize(size: CGSize) {
        layout.cardSize = size
    }
    
    //method that should return count of cards
    public func numberOfCards() -> Int {
        assertionFailure("Should be implemented in subsclass")
        return 0
    }
    
    //method that should return card by index
    public func card(collectionView: UICollectionView, cardForItemAtIndexPath indexPath: NSIndexPath) -> CasaDeCartasCollectionViewCell {
        assertionFailure("Should be implemented in subsclass")
        return CasaDeCartasCollectionViewCell()
    }
    
    public func moveCardUp() {
        if layout.index > 0 {
            layout.index -= 1
        }
    }
    
    public func moveCardDown() {
        if layout.index <= numberOfCards() - 1 {
            layout.index += 1
        }
    }
    
}


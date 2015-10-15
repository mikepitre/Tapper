//
//  ViewController.swift
//  tapper
//
//  Created by Mike Pitre on 10/15/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxTaps = 0
    var currentTaps = 0

    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapstxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    
    @IBAction func onCoinTapped(sender: UIButton) {
        currentTaps++
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if howManyTapstxt.text != nil && howManyTapstxt.text != "" {
            
            //Hide welcome page elements
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapstxt.hidden = true
            
            //Show tap page elements
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            //Set max taps to user input & current taps to zero
            maxTaps = Int(howManyTapstxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
            
        }
    }
    
    //Reset game and hidden/show elements
    func restartGame() {
        maxTaps = 0
        howManyTapstxt.text = ""
        
        //Show welcome page elements
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapstxt.hidden = false
        
        //Hide tap page elements
        tapBtn.hidden = true
        tapsLbl.hidden = true
        
    }
    
    //check if game is over
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLbl () {
        tapsLbl.text = "\(currentTaps) Taps"
    }


}


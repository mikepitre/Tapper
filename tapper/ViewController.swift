//
//  ViewController.swift
//  tapper
//
//  Created by Mike Pitre on 10/15/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapstxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        logoImg.hidden = true;
        playBtn.hidden = true;
        howManyTapstxt.hidden = true;
        
        tapBtn.hidden = false;
        tapsLbl.hidden = false;
    }


}


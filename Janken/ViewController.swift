//
//  ViewController.swift
//  Janken
//
//  Created by 桶本あいか on 2020/06/20.
//  Copyright © 2020 Okemoto.Aika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number1: Int!
    @IBOutlet var jankenComputerImageView: UIImageView!
    @IBOutlet var jankenUserImageView: UIImageView!
    @IBOutlet var jankenShouriHantei: UILabel!
    var numberComputerGu: Int = 0
    var numberComputerChoki: Int = 0
    var numberComputerPa: Int = 0
    var numberUserGu: Int = 0
    var numberUserChoki: Int = 0
    var numberUserPa: Int = 0
    var numberWin: Int = 0
    var numberDraw: Int = 0
    var numberLose: Int = 0
    var remainingNumberOfGameTime: Int = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    func jankenComputer() {
        number1 = Int.random(in: 0...2)
        if number1 == 0 {
            jankenComputerImageView.image = UIImage(named: "jankenGu")
            numberComputerGu = numberComputerGu + 1
        }else if number1 == 1 {
            jankenComputerImageView.image = UIImage(named: "jankenChoki")
            numberComputerChoki = numberComputerChoki + 1
        }else {
            jankenComputerImageView.image = UIImage(named: "jankenPa")
            numberComputerPa = numberComputerPa + 1
        }
        
    }
    
    @IBAction func jankenGu() {
        jankenUserImageView.image = UIImage(named: "jankenGu")
        self.jankenComputer()
        numberUserGu = numberUserGu + 1
        if number1 == 0{
            jankenShouriHantei.text = "あいこ"
            numberDraw = numberDraw + 1
        }
        else if number1 == 1{
            jankenShouriHantei.text = "勝ち"
            numberWin = numberWin + 1
        }
        else if number1 == 2{
            jankenShouriHantei.text = "負け"
            numberLose = numberLose + 1
        }
        remainingNumberOfGameTime = remainingNumberOfGameTime - 1
        
    }
    
    @IBAction func jankenChoki() {
        jankenUserImageView.image = UIImage(named: "jankenChoki")
        self.jankenComputer()
        numberUserChoki = numberUserChoki + 1
        if number1 == 0{
            jankenShouriHantei.text = "負け"
            numberLose = numberLose + 1
        }
        else if number1 == 1{
            jankenShouriHantei.text = "あいこ"
            numberDraw = numberDraw + 1
            
        }
        else if number1 == 2{
            jankenShouriHantei.text = "勝ち"
            numberWin = numberWin + 1
        }
        remainingNumberOfGameTime = remainingNumberOfGameTime - 1
    }
    
    
    @IBAction func jankenPa() {
        jankenUserImageView.image = UIImage(named: "jankenPa")
        self.jankenComputer()
        numberComputerPa = numberUserPa + 1
        if number1 == 0{
            jankenShouriHantei.text = "勝ち"
            numberWin = numberWin + 1
        }
        else if number1 == 1{
            jankenShouriHantei.text = "負け"
            numberLose = numberLose + 1
        }
        else if number1 == 2{
            jankenShouriHantei.text = "あいこ"
            numberDraw = numberDraw + 1
        }
        remainingNumberOfGameTime = remainingNumberOfGameTime - 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }


}


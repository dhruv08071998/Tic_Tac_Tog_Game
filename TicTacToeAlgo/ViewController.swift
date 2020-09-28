//
//  ViewController.swift
//  TicTacToeAlgo
//
//  Created by Dhruv Upadhyay on 04/04/20.
//  Copyright © 2020 Dhruv Upadhyay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resetBtn: UIButton!
    @IBOutlet var r2c2: UIButton!
    @IBOutlet var r2c1: UIButton!
    @IBOutlet var r2c0: UIButton!
    @IBOutlet var r1c2: UIButton!
    @IBOutlet var r1c1: UIButton!
    @IBOutlet var r1c0: UIButton!
    @IBOutlet var r0c2: UIButton!
    @IBOutlet var r0c1: UIButton!
    @IBOutlet var r0c0: UIButton!
    var board : [[String]] = [["_","_","_"],["_","_","_"],["_","_","_"]]
    var copyBoard  = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBtn.layer.cornerRadius = 15
        copyBoard = board
        print(board)
        
    }
    
    func validation(i: Int, j: Int) -> Bool {
        if board[i][j] == "_" {
            return true
        } else {
            return false
        }
    }
    @IBAction func onButtons(_ sender: Any) {
        if (sender as AnyObject).tag == 0{
            if validation(i: 0, j: 0) {
                r0c0.setTitle(player,for: .normal)
                r0c0.setTitleColor(UIColor.green, for: .normal)
                board[0][0] = "o"
                print(board)
                if !isTie(board: board){
                    let bestMove = GFG.findBestMove(board: &board)
                    // isTie(board: board)
                    board[bestMove.0.row][bestMove.0.col] = "x"
                    print(board)
                    systemResponse(row: bestMove.0.row, col: bestMove.0.col, bestVal: bestMove.1)
                }
                else{
                    tieAlert()
                }
            } else {
                showAlert(title: "Tic - Tac - Toe", message: "This Place is Occupied")
            }
        }
        if (sender as AnyObject).tag == 1{
            if validation(i: 0, j: 1) {
                r0c1.setTitle(player,for: .normal)
                r0c1.setTitleColor(UIColor.green, for: .normal)
                board[0][1] = "o"
                print(board)
                if !isTie(board: board){
                    let bestMove = GFG.findBestMove(board: &board)
                    board[bestMove.0.row][bestMove.0.col] = "x"
                    print(board)
                    systemResponse(row: bestMove.0.row, col: bestMove.0.col, bestVal: bestMove.1)
                }
                else{
                    tieAlert()
                }
            } else {
                showAlert(title: "Tic - Tac - Toe", message: "This Place is Occupied")
            }
        }
        if (sender as AnyObject).tag == 2{
            if validation(i: 0, j: 2) {
                r0c2.setTitle(player,for: .normal)
                r0c2.setTitleColor(UIColor.green, for: .normal)
                board[0][2] = "o"
                print(board)
                if !isTie(board: board){
                    let bestMove = GFG.findBestMove(board: &board)
                    board[bestMove.0.row][bestMove.0.col] = "x"
                    print(board)
                    systemResponse(row: bestMove.0.row, col: bestMove.0.col, bestVal: bestMove.1)
                }
                else{
                    tieAlert()
                }
            } else {
                showAlert(title: "Tic - Tac - Toe", message: "This Place is Occupied")
            }
        }
        if (sender as AnyObject).tag == 3{
            if validation(i: 1, j: 0) {
                r1c0.setTitle(player,for: .normal)
                r1c0.setTitleColor(UIColor.green, for: .normal)
                board[1][0] = "o"
                print(board)
                if !isTie(board: board){
                    let bestMove = GFG.findBestMove(board: &board)
                    board[bestMove.0.row][bestMove.0.col] = "x"
                    print(board)
                    systemResponse(row: bestMove.0.row, col: bestMove.0.col, bestVal: bestMove.1)
                }
                else{
                    tieAlert()
                }
            } else {
                showAlert(title: "Tic - Tac - Toe", message: "This Place is Occupied")
            }
        }
        if (sender as AnyObject).tag == 4{
            if validation(i: 1, j: 1) {
                r1c1.setTitle(player,for: .normal)
                r1c1.setTitleColor(UIColor.green, for: .normal)
                board[1][1] = "o"
                print(board)
                if !isTie(board: board){
                    let bestMove = GFG.findBestMove(board: &board)
                    board[bestMove.0.row][bestMove.0.col] = "x"
                    print(board)
                    systemResponse(row: bestMove.0.row, col: bestMove.0.col, bestVal: bestMove.1)
                }
                else{
                    tieAlert()
                }
            } else {
                showAlert(title: "Tic - Tac - Toe", message: "This Place is Occupied")
            }
        }
        if (sender as AnyObject).tag == 5{
            if validation(i: 1, j: 2) {
                r1c2.setTitle(player,for: .normal)
                r1c2.setTitleColor(UIColor.green, for: .normal)
                board[1][2] = "o"
                print(board)
                if !isTie(board: board){
                    let bestMove = GFG.findBestMove(board: &board)
                    board[bestMove.0.row][bestMove.0.col] = "x"
                    print(board)
                    systemResponse(row: bestMove.0.row, col: bestMove.0.col, bestVal: bestMove.1)
                }
                else{
                    tieAlert()
                }
            } else {
                showAlert(title: "Tic - Tac - Toe", message: "This Place is Occupied")
            }
        }
        if (sender as AnyObject).tag == 6{
            if validation(i: 2, j: 0) {
                r2c0.setTitle(player,for: .normal)
                r2c0.setTitleColor(UIColor.green, for: .normal)
                board[2][0] = "o"
                print(board)
                if !isTie(board: board){
                    let bestMove = GFG.findBestMove(board: &board)
                    board[bestMove.0.row][bestMove.0.col] = "x"
                    print(board)
                    systemResponse(row: bestMove.0.row, col: bestMove.0.col, bestVal: bestMove.1)
                }
                else{
                    tieAlert()
                }
            } else {
                showAlert(title: "Tic - Tac - Toe", message: "This Place is Occupied")
            }
        }
        if (sender as AnyObject).tag == 7{
            if validation(i: 2, j: 1) {
                r2c1.setTitle(player,for: .normal)
                r2c1.setTitleColor(UIColor.green, for: .normal)
                board[2][1] = "o"
                print(board)
                if !isTie(board: board){
                    let bestMove = GFG.findBestMove(board: &board)
                    board[bestMove.0.row][bestMove.0.col] = "x"
                    print(board)
                    systemResponse(row: bestMove.0.row, col: bestMove.0.col, bestVal: bestMove.1)
                }
                else{
                    tieAlert()
                }
            } else {
                showAlert(title: "Tic - Tac - Toe", message: "This Place is Occupied")
            }
        }
        if (sender as AnyObject).tag == 8{
            if validation(i: 2, j: 2) {
                r2c2.setTitle(player,for: .normal)
                r2c2.setTitleColor(UIColor.green, for: .normal)
                board[2][2] = "o"
                print(board)
                if !isTie(board: board){
                    let bestMove = GFG.findBestMove(board: &board)
                    board[bestMove.0.row][bestMove.0.col] = "x"
                    print(board)
                    systemResponse(row: bestMove.0.row, col: bestMove.0.col, bestVal: bestMove.1)
                }
                else{
                    tieAlert()
                }
            } else {
                showAlert(title: "Tic - Tac - Toe", message: "This Place is Occupied")
            }
        }
    }
    
    func systemResponse(row:Int, col:Int,bestVal:Int){
        let btnArr:[UIButton] = [r0c0,r0c1,r0c2,r1c0,r1c1,r1c2,r2c0,r2c1,r2c2]
        let resBtnTot = "r" + String(row) + "c" + String(col)
        for btn in btnArr{
            if resBtnTot == btn.titleLabel!.text{
                btn.setTitle(system,for: .normal)
                btn.setTitleColor(UIColor.red, for: .normal)
                if bestVal == 10{
                    let refreshAlert = UIAlertController(title: "Tic-Tac-toe", message: "iphone is Winner", preferredStyle: UIAlertController.Style.alert)
                    
                    refreshAlert.addAction(UIAlertAction(title: "Reset", style: .default, handler: { (action: UIAlertAction!) in
                        self.reset()
                        //
                    }))
                    refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
                        return
                        //
                    }))
                    
                    
                    present(refreshAlert, animated: true, completion: nil)
                }
                
            }
        }
    }
    
    func isTie(board:[[String]])-> Bool{
        var count = 1
        for i in 0...2{
            for j in 0...2{
                if board[i][j] == "_"{
                    count+=1
                }
            }
        }
        if count == 1{
            
            
            return true
            
        }
        return false
        
    }
    
    func tieAlert(){
        let refreshAlert = UIAlertController(title: "Tic-Tac-toe", message: "Game is Tie", preferredStyle: UIAlertController.Style.alert)
        refreshAlert.addAction(UIAlertAction(title: "Reset", style: .default, handler: { (action: UIAlertAction!) in
            self.reset()
            //
        }))
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            return
            //
        }))
        present(refreshAlert, animated: true, completion: nil)
    }
    
    @IBAction func onReset(_ sender: Any) {
        let refreshAlert = UIAlertController(title: "Tic-Tac-toe", message: "Do you want to reset game ?", preferredStyle: UIAlertController.Style.alert)
        refreshAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
            self.reset()
            //
        }))
        refreshAlert.addAction(UIAlertAction(title: "No", style: .default, handler: { (action: UIAlertAction!) in
            return
            //
        }))
        present(refreshAlert, animated: true, completion: nil)
        
    }
    func reset(){
        let btnArr:[UIButton] = [r0c0,r0c1,r0c2,r1c0,r1c1,r1c2,r2c0,r2c1,r2c2]
        self.board = self.copyBoard
        for i in 0...8{
            btnArr[i].setTitleColor(UIColor.clear, for: .normal)
        }
        btnArr[0].setTitle("r0c0", for: .normal)
        btnArr[1].setTitle("r0c1", for: .normal)
        btnArr[2].setTitle("r0c2", for: .normal)
        btnArr[3].setTitle("r1c0", for: .normal)
        btnArr[4].setTitle("r1c1", for: .normal)
        btnArr[5].setTitle("r1c2", for: .normal)
        btnArr[6].setTitle("r2c0", for: .normal)
        btnArr[7].setTitle("r2c1", for: .normal)
        btnArr[8].setTitle("r2c2", for: .normal)
    }
}



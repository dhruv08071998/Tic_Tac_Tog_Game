//
//  Algorithm.swift
//  TicTacToeAlgo
//
//  Created by Dhruv Upadhyay on 04/04/20.
//  Copyright © 2020 Dhruv Upadhyay. All rights reserved.
//

import Foundation
import UIKit

class GFG{
    class Move{
        var row = Int()
        var col = Int()
    }
    
    static let player = "x"
    static let opponent = "o"
    
    static func isMovesLest(board: [[
                                String]])->Bool{
        for i in 0...2{
            for j in 0...2{
                if (board[i][j] == "_"){
                    return true
                }
            }
        }
        return false
    }
    
    static func evaluate(b:[[String]])->Int{
        for row in 0...2{
            if b[row][0] == b[row][1] && b[row][1] == b[row][2]{
                if b[row][0] == player{
                    return +10
                }
                else if b[row][0] == opponent{
                    return -10
                }
            }
        }
        for col in 0...2{
            if b[0][col] == b[1][col] && b[1][col] == b[2][col]{
                if b[0][col] == player{
                    return +10
                }
                else if b[0][col] == opponent{
                    return -10
                }
            }
        }
        if b[0][0] == b[1][1] && b[1][1] == b[2][2]{
            if b[0][0] == player{
                return +10
            }
            else if b[0][0] == opponent{
                return -10
            }
        }
        if b[0][2] == b[1][1] && b[1][1] == b[2][0]{
            if b[0][2] == player{
                return +10
            }
            else if b[0][2] == opponent{
                return -10
            }
        }
        return 0
    }
    
    static func minimax(board:inout [[String]], depth:Int, isMax:Bool)->Int{
        
        let score = evaluate(b: board)
        
        if score == 10{
            return score
        }
        if score == -10{
            return score
        }
        if isMovesLest(board: board) == false{
            return 0
        }
        
        if isMax{
            var best = -1000
            
            for i in 0...2{
                for j in 0...2{
                    if board[i][j] == "_"{
                        board[i][j] = player
                        best = max(best, minimax(board: &board, depth: depth + 1, isMax: !isMax))
                        board[i][j] = "_"
                        
                    }
                }
            }
            return best-depth
        }
        else{
            var best = 1000
            
            for i in 0...2{
                for j in 0...2{
                    if board[i][j] == "_"{
                        board[i][j] = opponent
                        best = min(best, minimax(board: &board, depth: depth + 1, isMax: !isMax))
                        board[i][j] = "_"
                    }
                }
            }
            return best+depth
        }
    }
    
    static func findBestMove(board: inout[[String]])-> (Move,Int){
        var bestVal = -1000
        let bestMove = Move()
        bestMove.row = -1
        bestMove.col = -1
        
        for i in 0...2{
            for j in 0...2{
                if board[i][j] == "_"{
                    board[i][j] = player
                    let moveVal = minimax(board: &board, depth: 0, isMax: false)
                    board[i][j] = "_"
                    
                    if(moveVal > bestVal){
                        bestMove.row = i
                        bestMove.col = j
                        bestVal = moveVal
                    }
                    
                }
            }
        }
        print("The value of best move is" + String(bestVal))
        return (bestMove,bestVal)
    }
}

var player = ""
var system = ""
extension UIViewController {
    public func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
}

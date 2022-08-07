//
//  ViewController.swift
//  ticTacToe
//
//  Created by Iskhak Zhutanov on 3/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    var gameBoard = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
    
    var isGameOver = false
    
    var currentMove = true
    
    var isDraw = false
    
    func gameOver() {
        if !isGameOver {
            if !isDraw {
                error.text = "Error!"
            } else {
                ()
            }
        } else {
            if currentMove {
                result.text = "O won!"
            } else {
                result.text = "X won!"
            }
        }
    }
    
    func drawCheck() {
        if !isGameOver && !gameBoard[0].contains(0) && !gameBoard[1].contains(0) && !gameBoard[2].contains(0) {
            result.text = "Draw!"
            isDraw = true
        }
    }
    
    func gameOverCheck() {
        // horizontally
        
        for i in 0...2 {
            if gameBoard[i][0] == gameBoard[i][1] && gameBoard[i][0] == gameBoard[i][2] && gameBoard[i][0] != 0 {
                isGameOver = true
                break
            }
        }
        
        // vertically
        
        for i in 0...2 {
            if gameBoard[0][i] == gameBoard[1][i] && gameBoard[0][i] == gameBoard[2][i] && gameBoard[0][i] != 0 {
                isGameOver = true
                break
            }
        }
        
        // diagonally
        
        if gameBoard[0][0] == gameBoard[1][1] && gameBoard[0][0] == gameBoard[2][2] && gameBoard[0][0] != 0 || gameBoard[0][2] == gameBoard[1][1] && gameBoard[0][2] == gameBoard[2][0] && gameBoard[0][2] != 0 {
            isGameOver = true

        }
    }

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var error: UILabel!
    
    @IBAction func restart(_ sender: Any) {
        gameBoard = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
        label1.text = "    "
        label2.text = "    "
        label3.text = "    "
        label4.text = "    "
        label5.text = "    "
        label6.text = "    "
        label7.text = "    "
        label8.text = "    "
        label9.text = "    "
        isGameOver = false
        result.text = "                                    "
        error.text = "                        "
    }
    
    @IBAction func first(_ sender: Any) {
        if label1.text == "    " && !isGameOver {
            if currentMove {
                label1.text = "X"
                gameBoard[0][0] = 1
                currentMove = !currentMove
            } else {
                label1.text = "O"
                gameBoard[0][0] = 2
                currentMove = !currentMove
            }
            
            gameOverCheck()
            drawCheck()
            
            if isGameOver {
                gameOver()
            }
            
            if error.text == "Error!" {
                error.text = "                        "
            }
        } else {
            gameOver()
        }
    }
    
    @IBAction func second(_ sender: Any) {
        if label2.text == "    " && !isGameOver {
            if currentMove {
                label2.text = "X"
                gameBoard[0][1] = 1
                currentMove = !currentMove
            } else {
                label2.text = "O"
                gameBoard[0][1] = 2
                currentMove = !currentMove
            }
            
            gameOverCheck()
            drawCheck()
            
            if isGameOver {
                gameOver()
            }
            
            if error.text == "Error!" {
                error.text = "                        "
            }
        } else {
            gameOver()
        }
    }
    
    @IBAction func third(_ sender: Any) {
        if label3.text == "    " && !isGameOver {
            if currentMove {
                label3.text = "X"
                gameBoard[0][2] = 1
                currentMove = !currentMove
            } else {
                label3.text = "O"
                gameBoard[0][2] = 2
                currentMove = !currentMove
            }
            
            gameOverCheck()
            drawCheck()
            
            if isGameOver {
                gameOver()
            }
            
            if error.text == "Error!" {
                error.text = "                        "
            }
        } else {
            gameOver()
        }
    }
    
    @IBAction func fourth(_ sender: Any) {
        if label4.text == "    " && !isGameOver {
            if currentMove {
                label4.text = "X"
                gameBoard[1][0] = 1
                currentMove = !currentMove
            } else {
                label4.text = "O"
                gameBoard[1][0] = 2
                currentMove = !currentMove
            }
            
            gameOverCheck()
            drawCheck()
            
            if isGameOver {
                gameOver()
            }
            
            if error.text == "Error!" {
                error.text = "                        "
            }
        } else {
            gameOver()
        }
    }
    
    @IBAction func fifth(_ sender: Any) {
        if label5.text == "    " && !isGameOver {
            if currentMove {
                label5.text = "X"
                gameBoard[1][1] = 1
                currentMove = !currentMove
            } else {
                label5.text = "O"
                gameBoard[1][1] = 2
                currentMove = !currentMove
            }
            
            gameOverCheck()
            drawCheck()
            
            if isGameOver {
                gameOver()
            }
            
            if error.text == "Error!" {
                error.text = "                        "
            }
        } else {
            gameOver()
        }
    }
    
    @IBAction func sixth(_ sender: Any) {
        if label6.text == "    " && !isGameOver {
            if currentMove {
                label6.text = "X"
                gameBoard[1][2] = 1
                currentMove = !currentMove
            } else {
                label6.text = "O"
                gameBoard[1][2] = 2
                currentMove = !currentMove
            }
            
            gameOverCheck()
            drawCheck()
            
            if isGameOver {
                gameOver()
            }
            
            if error.text == "Error!" {
                error.text = "                        "
            }
        } else {
            gameOver()
        }
    }
    
    @IBAction func seventh(_ sender: Any) {
        if label7.text == "    " && !isGameOver {
            if currentMove {
                label7.text = "X"
                gameBoard[2][0] = 1
                currentMove = !currentMove
            } else {
                label7.text = "O"
                gameBoard[2][0] = 2
                currentMove = !currentMove
            }
            
            gameOverCheck()
            drawCheck()
            
            if isGameOver {
                gameOver()
            }
            
            if error.text == "Error!" {
                error.text = "                        "
            }
        } else {
            gameOver()
        }
    }
    
    @IBAction func eighth(_ sender: Any) {
        if label8.text == "    " && !isGameOver {
            if currentMove {
                label8.text = "X"
                gameBoard[2][1] = 1
                currentMove = !currentMove
            } else {
                label8.text = "O"
                gameBoard[2][1] = 2
                currentMove = !currentMove
            }
            
            gameOverCheck()
            drawCheck()
            
            if isGameOver {
                gameOver()
            }
            
            if error.text == "Error!" {
                error.text = "                        "
            }
        } else {
            gameOver()
        }
    }
    
    @IBAction func nineth(_ sender: Any) {
        if label9.text == "    " && !isGameOver {
            if currentMove {
                label9.text = "X"
                gameBoard[2][2] = 1
                currentMove = !currentMove
            } else {
                label9.text = "O"
                gameBoard[2][2] = 2
                currentMove = !currentMove
            }
            
            gameOverCheck()
            drawCheck()
            
            if isGameOver {
                gameOver()
            }
            
            if error.text == "Error!" {
                error.text = "                        "
            }
        } else {
            gameOver()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

}


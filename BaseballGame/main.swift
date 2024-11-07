//
//  main.swift
//  BaseballGame
//
//  Created by 서지민 on 11/5/24.
//

struct BaseballGame {
    func start() {
        let answer = makeAnswer()
        
        while true {
            print("숫자를 입력하세요: ")
            
            guard let input = readLine(), let userGuess = Int(input) else {
                print("정수를 입력해주세요")
                continue
            }
            
            
            
        }
    }
    
    func makeAnswer() -> [Int] {
        var answerNum: Set<Int> = []
        let randomNum = Int.random(in: 1...9)
        
        while answerNum.count != 3 {
            answerNum.insert(randomNum)
        }
        
        return Array(answerNum)
    }
}


let game = BaseballGame()
game.start()

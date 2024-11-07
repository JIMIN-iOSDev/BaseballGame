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
            
            // 유저에게 입력값을 받고 정수로 변환되지 않으면 반복문 처음으로 돌아감
            guard let input = readLine(), let userGuess = Int(input) else {
                print("정수를 입력해주세요")
                continue
            }
            
        }
    }
    
    // 정답 만드는 함수
    func makeAnswer() -> [Int] {
        // 중복값 없게 Set으로 정답 값 담을 공간
        var answerNum: Set<Int> = []
        // 1~9 중 랜덤 숫자 뽑기
        let randomNum = Int.random(in: 1...9)
        
        // answerNum에 3개가 담길 때까지 랜덤으로 뽑아서 담는다
        while answerNum.count != 3 {
            answerNum.insert(randomNum)
        }
        // 배열 형태로 반환해야 함
        return Array(answerNum)
    }
}


let game = BaseballGame()
game.start()

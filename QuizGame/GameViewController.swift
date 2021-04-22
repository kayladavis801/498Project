//
//  GameViewController.swift
//  QuizGame
//
//  Created by Kayla Davis.
//


import UIKit

class GameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var gameModels = [Question]()
    
    var currentQuestion: Question?
    
    @IBOutlet var label: UILabel!
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        setupQuestions()
        configureUI(question: gameModels.first!)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    private func configureUI(question: Question){
        label.text = question.text
        currentQuestion = question
        table.reloadData()
    }
    
    private func checkAnswer(answer: Answer, question: Question) -> Bool{
        return question.answers.contains(where: {$0.text == answer.text} ) && answer.correct
    }
    
    private func setupQuestions(){
        gameModels.append(Question(text: "Sector 1: Cybersecurity is the practice of protecting systems, networks, and programs from _____.", answers: [
            Answer(text:"Dragons", correct: false),
            Answer(text:"Zombie attacks", correct: false),
            Answer(text:"Dinosaurs", correct: false),
            Answer(text:"Digital attacks", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 2: What is NOT a major element of cybersecurity?", answers: [
            Answer(text:"end-user education", correct: false),
            Answer(text:"Walmart security", correct: true),
            Answer(text:"Buisness continuity planning", correct: false),
            Answer(text:"Application security", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 3: What does the CIA triad stand for?", answers: [
            Answer(text:"Contained Information Association", correct: false),
            Answer(text:"Confidentiality Integrity Avalibility", correct: true),
            Answer(text:"Central Intelligence Agency", correct: false),
            Answer(text:"Cybersecurity Intelligence Avalibiltiy", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 4: Cryptography is a technique used to protect information from third parties called ____.", answers: [
            Answer(text:"Actions", correct: false),
            Answer(text:"Activators", correct: false),
            Answer(text:"Adversaries", correct: true),
            Answer(text:"Advocators", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 5: SSL stands for ____. It is a technology creating encrypted connections between a web server and a web browser.", answers: [
            Answer(text:"Secure Sockets Layer", correct: true),
            Answer(text:"Synronized Swimming Lifegaurds", correct: false),
            Answer(text:"Suspicious Security Law", correct: false),
            Answer(text:"Safe Security Level", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 6: A number of internet-connected devices like servers, mobile devices, IoT devices, and PCs that are infected and controlled by malware are called ____.", answers: [
            Answer(text:"Trash", correct: false),
            Answer(text:"Viruses", correct: false),
            Answer(text:"Boo boos", correct: false),
            Answer(text:"Botnets", correct: true),
        ]))
        gameModels.append(Question(text: "Sector 7: What does CSRF stand for?", answers: [
            Answer(text:"Cross-Site Request Forgery", correct: true),
            Answer(text:"Cyber Security Rotational Force", correct: false),
            Answer(text:"Cryptography Safe in Rep Facilities", correct: false),
            Answer(text:"Cheif of Security in Ratifying Firewalls", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 8: When is accessing a computer without permission, destroying data and copy information without the owner’s permission, or anything of the sort leagal?", answers: [
            Answer(text:"Before 9PM", correct: false),
            Answer(text:"After 9PM ", correct: false),
            Answer(text:"Never", correct: true),
            Answer(text:"Anytime", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 9: ____ is a process of finding weakness in computer or private networks to exploit its weaknesses and gain access.", answers: [
            Answer(text:"Fighting", correct: false),
            Answer(text:"Hacking", correct: true),
            Answer(text:"Fishing", correct: false),
            Answer(text:"Running", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 10: How many HTTP response codes are there?", answers: [
            Answer(text:"2", correct: false),
            Answer(text:"7", correct: false),
            Answer(text:"10", correct: false),
            Answer(text:"5", correct: true),
        ]))
        
    }
    //Table view function
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentQuestion?.answers.count ?? 0
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = currentQuestion?.answers[indexPath.row].text
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let question = currentQuestion else{
            return
        }
        let answer = question.answers[indexPath.row]
        
        if checkAnswer(answer: answer, question: question){
            //correct
            if let index = gameModels.firstIndex(where: {$0.text == question.text}){
                if index < (gameModels.count - 1){
                    
                    let alert = UIAlertController(title: "Correct", message: "You've advanced to the next sector!", preferredStyle: .alert)
                    alert.addAction( UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alert, animated: true)
                    
                    //next quesiton
                    let nextQuestion = gameModels[index+1]
                    currentQuestion = nil
                    configureUI(question: nextQuestion)
                }
                else{
                    //end of game
                    let alert = UIAlertController(title: "Done", message: "you beat the game!!", preferredStyle: .alert)
                    alert.addAction( UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    present(alert, animated: true)
                }
            }
            
        }
        else{
            //wrong
            let alert = UIAlertController(title: "wrong", message: "Not quite. Try again!", preferredStyle: .alert)
            alert.addAction( UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            present(alert, animated: true)
        }
    }
}




struct Question {
    let text: String
    let answers: [Answer]
}

struct Answer{
    let text: String
    let correct: Bool //true /false
}

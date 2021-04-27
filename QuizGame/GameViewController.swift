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
        //shuffledn (not sure if I want to keep this)
        gameModels.shuffle()
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
            Answer(text:"Secure Socket Layer", correct: true),
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
        
        gameModels.append(Question(text: "Sector 10: What attack is a way of finding out the right credentials by repetitively trying all the permutations and combinations of possible credentials?", answers: [
            Answer(text:"Drive-by", correct: false),
            Answer(text:"Man in the Middle", correct: false),
            Answer(text:"SQL injection", correct: false),
            Answer(text:"Brute Force", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 11: ____ is the practice of protecting systems, networks, and programs from digital attackes.", answers: [
            Answer(text:"Cybersecurity", correct: true),
            Answer(text:"Swimming", correct: false),
            Answer(text:"Cryptography", correct: false),
            Answer(text:"Port Scanning", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 12: Malware is one of the most ____ types of cybersecurity attacks. ", answers: [
            Answer(text:"Uncommon", correct: false),
            Answer(text:"Common", correct: true),
            Answer(text:"Difficult", correct: false),
            Answer(text:"Annoying", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 13: ____ is an application designed for identifying open ports and services accessible on a host network", answers: [
            Answer(text:"Drive-by", correct: false),
            Answer(text:"Man in the Middle", correct: false),
            Answer(text:"Port scanning", correct: true),
            Answer(text:"Brute Force", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 14: ____ is a technique used to protect information from third parties called adversaries.", answers: [
            Answer(text:"Hieroglyphics", correct: false),
            Answer(text:"Cryptography", correct: true),
            Answer(text:"Traceroute", correct: false),
            Answer(text:"Secure Socket Layer", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 15: What does VPN stand for?", answers: [
            Answer(text:"Vanquish Pirate Narcotics", correct: false),
            Answer(text:"Vector Point Notation", correct: false),
            Answer(text:"Vaporized Particle Nitrogen", correct: false),
            Answer(text:"Virtual Private Network", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 16: Virtual Private Network is a network connection method for creating an encrypted and ____ connection", answers: [
            Answer(text:"layered", correct: false),
            Answer(text:"sketchy", correct: false),
            Answer(text:"risky", correct: false),
            Answer(text:"safe", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 17: ____ are computer hacker who sometimes violate ethical standards, but they do not have malicious intent.", answers: [
            Answer(text:"White hat hackers", correct: false),
            Answer(text:"Grey hat hackers", correct: true),
            Answer(text:"Black hat hackers", correct: false),
            Answer(text:"Red hat hackers", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 18: ____ encryption requires the same key for encryption and decryption.", answers: [
            Answer(text:"Symmetric", correct: true),
            Answer(text:"Asymmetric", correct: false),
            Answer(text:"DES", correct: false),
            Answer(text:"AES", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 19: ____ encryption needs different keys for encryption and decryption.", answers: [
            Answer(text:"Symmetric", correct: false),
            Answer(text:"Asymmetric", correct: true),
            Answer(text:"DES", correct: false),
            Answer(text:"AES", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 20: What is a malware type in which security mechanism is bypassed to access a system?", answers: [
            Answer(text:"Frontdoor", correct: false),
            Answer(text:"Backdoor", correct: true),
            Answer(text:"Cracked door", correct: false),
            Answer(text:"Sidedoor", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 21: What does DES stand for?", answers: [
            Answer(text:"Drive Ethernet System", correct: false),
            Answer(text:"Derivative of Earth Sand", correct: false),
            Answer(text:"Data Encryption Standard", correct: true),
            Answer(text:"Drivers Eager Solution", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 22: What does AES stand for?", answers: [
            Answer(text:"Attractive Export Sample", correct: false),
            Answer(text:"Advanced Encryption Standard", correct: true),
            Answer(text:"Adversary Erasing System", correct: false),
            Answer(text:"Active Encoded Sandbox", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 23: ____ is a tool used for analyzing data packets sent over a network.", answers: [
            Answer(text:"Tracking", correct: false),
            Answer(text:"Network Decoding", correct: false),
            Answer(text:"Net Hounding", correct: false),
            Answer(text:"Network Sniffing", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 24: What does WAF stand for?", answers: [
            Answer(text:"Wired Activation Flap", correct: false),
            Answer(text:"Wiggly Advancing Framework", correct: false),
            Answer(text:"Web Application Firewall", correct: true),
            Answer(text:"Weird Adversary Function", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 25: Web Application Firewall is used to protect the application by ____ and monitoring incoming and outgoing traffic between web application and the internet.", answers: [
            Answer(text:"Hacking", correct: false),
            Answer(text:"Factoring", correct: false),
            Answer(text:"Polluting", correct: false),
            Answer(text:"Filtering", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 26: ____ is a software testing method in which the internal structure or program code is HIDDEN.", answers: [
            Answer(text:"Black Box Testing", correct: true),
            Answer(text:"White Box Testing", correct: false),
            Answer(text:"Red Box Testing", correct: false),
            Answer(text:"Purple Box Testing", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 27: ____ is a software testing method in which internal structure or program is KNOWN by tester.", answers: [
            Answer(text:"Black Box Testing", correct: false),
            Answer(text:"White Box Testing", correct: true),
            Answer(text:"Red Box Testing", correct: false),
            Answer(text:"Purple Box Testing", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 28: Vulnerabilities refer to the ____ point in software code which can be exploited by a threat actor", answers: [
            Answer(text:"common", correct: false),
            Answer(text:"difficult", correct: false),
            Answer(text:"strong", correct: false),
            Answer(text:"weak", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 29: Data ____ refers to the unauthorized transfer of data from a computer system.", answers: [
            Answer(text:"security", correct: false),
            Answer(text:"transmission", correct: false),
            Answer(text:"escapement", correct: false),
            Answer(text:"exfiltration", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 30: What is the process of checking exploitable vulnerabilities on a target?", answers: [
            Answer(text:"Broadcast Protocol", correct: false),
            Answer(text:"Penetration Testing", correct: true),
            Answer(text:"Security", correct: false),
            Answer(text:"Cyber-attack", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 31: What is a way to protect email messages, credit card information, and corporate data?", answers: [
            Answer(text:"Hide in Plain Sight", correct: false),
            Answer(text:"Don't tell anyone", correct: false),
            Answer(text:"Write it down", correct: false),
            Answer(text:"Use a Cipher Algorithm", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 32: Is there a risk using pubic Wi-Fi?", answers: [
            Answer(text:"No. Completly Safe.", correct: false),
            Answer(text:"Yes. Many Security Issues.", correct: true),
            Answer(text:"Depends on the location.", correct: false),
            Answer(text:"Depends on the device.", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 33: ____ is a technique in which the sender converts the message into a code.", answers: [
            Answer(text:"Penetration Testing", correct: false),
            Answer(text:"Data encryption", correct: true),
            Answer(text:"Buisness continuity planning", correct: false),
            Answer(text:"Application security", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 34: ____ or security specialist are specialized in penetration testing. They protect the information system of an organization.", answers: [
            Answer(text:"White hat hackers", correct: true),
            Answer(text:"Grey hat hackers", correct: false),
            Answer(text:"Black hat hackers", correct: false),
            Answer(text:"Red hat hackers", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 35: ____ are hackers who can generate malware for personal financial gain or other malicious reasons. They break into a secure network to modify, steal, or destroy data so that the network can not be used by authorized network users.", answers: [
            Answer(text:"White hat hackers", correct: false),
            Answer(text:"Grey hat hackers", correct: false),
            Answer(text:"Black hat hackers", correct: true),
            Answer(text:"Red hat hackers", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 36: Web Application Firewall is used to protect the application by ____ and monitoring incoming and outgoing traffic between web application and the internet.", answers: [
            Answer(text:"Hacking", correct: false),
            Answer(text:"Factoring", correct: false),
            Answer(text:"Polluting", correct: false),
            Answer(text:"Filtering", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 37: ____ is a software testing method in which the internal structure or program code is HIDDEN.", answers: [
            Answer(text:"Black Box Testing", correct: true),
            Answer(text:"White Box Testing", correct: false),
            Answer(text:"Red Box Testing", correct: false),
            Answer(text:"Purple Box Testing", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 38: ____ is a software testing method in which internal structure or program is KNOWN by tester.", answers: [
            Answer(text:"Black Box Testing", correct: false),
            Answer(text:"White Box Testing", correct: true),
            Answer(text:"Red Box Testing", correct: false),
            Answer(text:"Purple Box Testing", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 39: Vulnerabilities refer to the ____ point in software code which can be exploited by a threat actor", answers: [
            Answer(text:"common", correct: false),
            Answer(text:"difficult", correct: false),
            Answer(text:"strong", correct: false),
            Answer(text:"weak", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 40: Data ____ refers to the unauthorized transfer of data from a computer system.", answers: [
            Answer(text:"security", correct: false),
            Answer(text:"transmission", correct: false),
            Answer(text:"escapement", correct: false),
            Answer(text:"exfiltration", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 41: What is the process of checking exploitable vulnerabilities on a target?", answers: [
            Answer(text:"Broadcast Protocol", correct: false),
            Answer(text:"Penetration Testing", correct: true),
            Answer(text:"Security", correct: false),
            Answer(text:"Cyber-attack", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 42: What is a way to protect email messages, credit card information, and corporate data?", answers: [
            Answer(text:"Hide in Plain Sight", correct: false),
            Answer(text:"Don't tell anyone", correct: false),
            Answer(text:"Write it down", correct: false),
            Answer(text:"Use a Cipher Algorithm", correct: true),
        ]))
        
        gameModels.append(Question(text: "Sector 43: There is a hacker attack every ____ seconds.", answers: [
            Answer(text:"97", correct: false),
            Answer(text:"39", correct: true),
            Answer(text:"4", correct: false),
            Answer(text:"51", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 44: Who is arguably the first computer hacker?", answers: [
            Answer(text:"Kanye West", correct: false),
            Answer(text:"Konrad Zuse", correct: true),
            Answer(text:"Bob Ross", correct: false),
            Answer(text:"Grace Hopper", correct: false),
        ]))
        
        gameModels.append(Question(text: "Sector 45: When was the first computer virus written?", answers: [
            Answer(text:"1986", correct: true),
            Answer(text:"1999", correct: false),
            Answer(text:"1965", correct: false),
            Answer(text:"1977", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 46: How old were Basit and Amjad Farooq Alvi, the brothers who made the first computer virus, at the time?", answers: [
            Answer(text:"31 and 37", correct: false),
            Answer(text:"28 and 33", correct: false),
            Answer(text:"17 and 24", correct: true),
            Answer(text:"21 and 26", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 47: what is the name of the first anitvirus software ever written?", answers: [
            Answer(text:"Reaper", correct: true),
            Answer(text:"Killer", correct: false),
            Answer(text:"Cipher", correct: false),
            Answer(text:"Lüning", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 48: Andreas Lüning and ____ invented the first antivirus.", answers: [
            Answer(text:"Grace Hopper", correct: false),
            Answer(text:"Alan Turning", correct: false),
            Answer(text:"Beyonce", correct: false),
            Answer(text:"Kai Figge", correct: true),
        ]))
        gameModels.append(Question(text: "Sector 49: When was the first antivirus made", answers: [
            Answer(text:"1987", correct: true),
            Answer(text:"1992", correct: false),
            Answer(text:"1976", correct: false),
            Answer(text:"2001", correct: false),
        ]))
        gameModels.append(Question(text: "Sector 50: What was the first computer virus called?", answers: [
            Answer(text:"Creaper", correct: true),
            Answer(text:"Snake", correct: false),
            Answer(text:"Virus 1", correct: false),
            Answer(text:"Terminator", correct: false),
        ]))
        
       
    }
    //Table view function
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentQuestion?.answers.count ?? 0
        
    }
    //Table view function cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = currentQuestion?.answers[indexPath.row].text
        return cell
    }
    
    //selecting rows
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
//                }
//                else{
//                    //end of game
//                    let alert = UIAlertController(title: "Done", message: "you beat the game!! Push the back button at the top to try again!", preferredStyle: .alert)
//                    alert.addAction( UIAlertAction(title: "Ok", style: .cancel, handler: nil))
//                    present(alert, animated: true)
//                }
            }
            }
            
        }
        else{
            //wrong
            let alert = UIAlertController(title: "Wrong", message: "Not quite. Try again!", preferredStyle: .alert)
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

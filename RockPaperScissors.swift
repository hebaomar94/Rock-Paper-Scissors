//we will choice between throwing rock, paper, or scissors.
func getUserChoice ( userInput: String) -> String{
//if statement check the value vaild or no 
if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
  return userInput
}else {
  return "You can only enter rock, paper, or scissors. Try again."
}
}
//print  (getUserChoice(userInput: "rock"))
//fun will determine and display the computer’s choice in the game.
func getComputerChoice() -> String {
  let randomNumber = Int.random(in: 0...2) 
  switch randomNumber {
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default:
      return "Something went wrong"
  }
}
print(getComputerChoice())
//Determine Winner
//Now that we’ve set up each player’s move,
func determineWinner (_ userChoice: String , _ compChoice: String ) -> String 
{
var decision = "It's a tie"
switch userChoice {
case "rock":
  if  compChoice == "paper" {
    decision = "The computer won"
  }
  else if compChoice == "scissors" {
      decision = "The user won"
      }
case "paper":
    if compChoice == "rock" {
      decision = "The user won"
    } else if compChoice == "scissors"{
      decision = "The computer won"
    }
case "scissors":
    if compChoice == "rock" {
      decision = "The computer won"
    } else if compChoice == "paper" {
      decision = "The user won"
    } 
    default:
     print ("Something went wrong")
     
 }
 return decision
}
let userChoice = getUserChoice(userInput: "paper")
print (userChoice)
let compChoice = getComputerChoice()
print("You threw \(userChoice)")
print("You threw \(compChoice )")
print(determineWinner(userChoice, compChoice))












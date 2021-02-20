import Foundation


// MARK: - Projet 3 Openclassooms. Documentation ! 

//⚠️ Tant qu'il y'aura une erreur dans un fichier, le code ne s'executera pas !

/* Create a game fight including 2 Players
    --> Each of the players have a team including 3 game characters
    --> Each of character has (Name, Gun and lives points)
*/

// MARK: - let's play ! 😃-

var game = Game()

// ⛳️ Création des équipes !
game.start()
game.createPlayers()
game.playerSelectYourCharacter()
//
//
// ⛳️Message pour indiquer que les équipes sont completes !
game.teamsAreCompleted()
//
//
// ⛳️Le combat commence!
game.pickFight()
//
//
// ⛳️La fin du jeu !
game.endOfGame()

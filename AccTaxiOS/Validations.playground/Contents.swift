//: Playground - noun: a place where people can play

import Cocoa
import Foundation

protocol ConventionIsFull {
    func isConvention(Message:String)
}

class Convention : ConventionIsFull{
    
    //Properties
    let Name:String
    var Participants:Array<String>?
    
    //Methods
    func HowManyParticipants() -> Void {
        if let Participants = Participants {
            print(self.Participants!.count)
        }
        print("Hello")
    }
    
    func isConvention(Message: String) {
        print(Message)
    }
    
    //Initializers
    init(Name:String){
        self.Name = Name
    }
    
    init(Name:String, Participants:Array<String>){
        self.Name = Name
        self.Participants = Participants
    }
    
}


var MedicosConvention = Convention(Name: "Medicos", Participants: ["Edwin","Jose"])

MedicosConvention.Participants?.append("Cool")

MedicosConvention.HowManyParticipants()

MedicosConvention.isConvention("Protocol")

class Event: Convention {
    var NameEvent:String = ""
}

var cool = Event(Name: "Hello")
cool.Participants = [""]
cool.HowManyParticipants()


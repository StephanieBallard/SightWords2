//
//  Words.swift
//  SightWordsTwoProgrammaticUI
//
//  Created by Stephanie Ballard on 2/8/21.
//

import Foundation

struct SetOfWords: Hashable {
    let name: String
    var words: [String]
}

let wordSets = [setOne, setTwo, setThree, setFour, setFive, setSix]

let setOne = SetOfWords(name: "Set One", words: one)
let setTwo = SetOfWords(name: "Set Two", words: two)
let setThree = SetOfWords(name: "Set Three", words: three)
let setFour = SetOfWords(name: "Set Four", words: four)
let setFive = SetOfWords(name: "Set Five", words: five)
let setSix = SetOfWords(name: "Set Six", words: six)

let one = ["A", "After", "Again", "All", "Am", "An", "And", "Any", "Are", "As", "Ask", "At", "Ate", "Away", "Be", "One", "Open", "Our", "Out", "Over", "Play", "Please", "Pretty", "Put", "Ran", "Red", "Ride", "Round", "Run", "Said"]
let two = ["Big", "Black", "Blue", "Brown", "But", "By", "Came", "Can", "Come", "Could", "Did", "Do", "Down", "Eat", "Every", "Purple", "Say", "See", "She", "So", "Some", "Soon", "Stop", "Take", "Thank", "That", "The", "Them", "Then", "There"]
let three = ["Find", "Fly", "First", "Four", "From", "Funny", "Get", "Girl", "Go", "Going", "Good", "Had", "Has", "Have", "He", "They", "Think", "This", "Three", "Too", "Two", "Us", "Under", "Up", "Walk", "Want", "Was", "We", "Well", "Went"]
let four = ["Give","Help", "Her", "Here", "Him", "His", "How", "I", "In", "Into", "Is", "It", "Jump", "Just", "Know", "Let", "Like", "Too", "Were", "What", "When", "Where", "White", "Who", "Will", "With", "Yellow", "Yes", "You", "Young"]
let five = ["About", "Boy", "Been", "Before", "Best", "Bye", "Call", "Cat", "Day", "Each", "Girl", "Green", "Little", "Low", "Make", "Many", "More", "Night", "No", "Now", "Not", "Off", "Old", "Orange", "Pink", "Saw", "Than", "Their", "When", "Which"]
let six = ["Animal", "Bad", "Car", "Dog", "Eye", "Family", "Fast", "For", "Friend", "High", "House", "Keep", "Live", "Look", "Make", "Me", "Must", "Of", "On", "Own", "Part", "School", "Should", "Slow", "Start", "Talk", "Thing", "To", "Would", "Year"]

// model controller 

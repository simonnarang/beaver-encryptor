//
//  BeaverEncryptor.swift
//  Beaver Encryptor
//
//  Created by Simon Narang on 6/25/16.
//  Copyright © 2016 Simon Narang. All rights reserved.
//

var string = "STRING_YOU_WANT_ENCRYPTED"
var stringOne: [Character] = []
var stringTwo: [Character] = []
var stringThree: [Character] = []
var stringFour: [Character] = []
var index = 0
for i in string.characters {
    index+=1
    if index % 2 == 0 {
        
        stringOne.append(i)
        
    } else if index % 2 == 1 {
        
        stringTwo.append(i)
     
    }
}
index = 0
for i in stringOne {
    if stringThree.count >= stringOne.count {
        
    } else {
        stringThree.append(stringOne[index])
        
        if stringOne[index] != stringOne[stringOne.count - (index + 1)] {
            stringThree.append(stringOne[stringOne.count - (index + 1)])
        }
        
    }
    index+=1
}
index = 0
for i in stringTwo {
   if stringFour.count >= stringTwo.count {
        
    } else {
        stringFour.append(stringTwo[index])
        if stringTwo[index] != stringTwo[stringTwo.count - (index + 1)] {
            stringFour.append(stringTwo[stringTwo.count - (index + 1)])
        }
        
    }
    index+=1
}
index = 0
print("When \(string) is beaver-encrypted it becomes \(String(stringThree))\(String(stringFour))")

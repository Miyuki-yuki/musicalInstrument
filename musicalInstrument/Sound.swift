//
//  Sound.swift
//  musicalInstrument
//
//  Created by Miyuki Kikuchi on 07/10/2023.
//
import UIKit
import AVFoundation

class Sound: NSObject {
    // Read the data
    let drum = NSDataAsset(name: "drum")?.data
    let piano = NSDataAsset(name: "flower")?.data
    
    var drumPlayer: AVAudioPlayer?
    var pianoPlayer: AVAudioPlayer?
    
    
    override init() {
        super.init()
        do {
            if let drumData = drum {
                drumPlayer = try AVAudioPlayer(data: drumData)
            } else {
                print("Drum data is nil")
            }
            if let pianoData = piano {
                pianoPlayer = try AVAudioPlayer(data: pianoData)
            } else {
                print("Piano data is nil")
            }
            
            
        } catch let error {
            print("Initialization error: \(error)")
        }
    }
    
    func playDrum() {
        if drumPlayer?.isPlaying == false {
            drumPlayer?.play()
        } else {
            print("Drum is already playing")
        }
    }
    
    func pauseDrum() {
        if drumPlayer?.isPlaying == true {
            drumPlayer?.pause()
        } else {
            print("Drum is not playing")
        }
    }
    func playPiano() {
        if pianoPlayer?.isPlaying == false {
            pianoPlayer?.play()
        } else {
            print("Piano is already playing")
        }
    }
    
    func pausePiano() {
        if pianoPlayer?.isPlaying == true {
            pianoPlayer?.pause()
        } else {
            print("Piano is not playing")
        }
    }
}

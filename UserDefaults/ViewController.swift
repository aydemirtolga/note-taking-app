//
//  ViewController.swift
//  UserDefaults
//
//  Created by Tolga Can Aydemir on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var noteTextField: UITextField!
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let savedNote = UserDefaults.standard.object(forKey: "note")
        let savedDate = UserDefaults.standard.object(forKey: "date")
        if let getNote = savedNote as? String {
            noteLabel.text = "Note: \(getNote)"
        }
        if let getDate = savedDate as? String {
            dateLabel.text = "Date: \(getDate)"
        }
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(noteTextField.text!, forKey: "note")
        UserDefaults.standard.set(dateTextField.text!, forKey: "date")
        
        noteLabel.text = "Note: \(noteTextField.text!)"
        dateLabel.text = "Date: \(dateTextField.text!)"
    }
    
    @IBAction func clearButton(_ sender: Any) {
        if noteLabel.text != nil{
            UserDefaults.standard.removeObject(forKey: "note")
            noteLabel.text = "Note: "
        }
        if dateLabel.text != nil {
            UserDefaults.standard.removeObject(forKey: "date")
            dateLabel.text = "Date: "
        }
    }
    
}


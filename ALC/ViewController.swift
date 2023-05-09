//
//  ViewController.swift
//  ALC
//
//  Created by Jared Infantino on 2023-05-09.

//  Challenges:
//  1. replace the width anchor for the labels with leadingAnchor and trailingAnchor - DONE
//  2. after completing the first challenge, try using the safeAreaLayoutGuide for those constraints (check in landscape mode) - DONE
//  3. try making the height of your labels equal to 1/5th of the main view - 10 to account for spacing. (check hints on the website) - DONE

import UIKit

class ViewController: UIViewController {
    // MARK: - PROPERTIES
    
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Labels
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = UIColor.systemGray5
        label1.text = "THESE"
        label1.textAlignment = .center
        label1.layer.masksToBounds = true
        label1.layer.cornerRadius = 25
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.systemGray4
        label2.text = "ARE"
        label2.textAlignment = .center
        label2.layer.masksToBounds = true
        label2.layer.cornerRadius = 25
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.systemGray3
        label3.text = "SOME"
        label3.textAlignment = .center
        label3.layer.masksToBounds = true
        label3.layer.cornerRadius = 25
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = UIColor.systemGray2
        label4.text = "AWESOME"
        label4.textAlignment = .center
        label4.layer.masksToBounds = true
        label4.layer.cornerRadius = 25
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = UIColor.systemGray
        label5.text = "LABELS"
        label5.textAlignment = .center
        label5.layer.masksToBounds = true
        label5.layer.cornerRadius = 25
        label5.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5] // strings for the key to be used in the Visual Format
        
        // Constraints
        //        for label in viewsDictionary.keys { // using a loop to cutdown on repeating the same line of code
        //            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
        //            // visual format in stirng form describing how we want our labels to look+
        //        }
        //
        //        let metrics = ["labelHeight": 88]
        //
        //        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary)) // when specifying a space you need to add a dash on each side -(size)-
        //
        var previous: UILabel?
        
        for label in [label1, label2, label3, label4, label5] {
            //label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
            //label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2, constant: -10).isActive = true // 0.2 divides the labels into 1/5th, - 10 to add the padding
            
            if let previous = previous {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true // if starting at the first label (no previous) pin it at the top of the safe area
            }
            previous = label
    }
    
}

// MARK: - FUNCTIONS


// MARK: - BODY

}
// MARK: - EXTENSIONS

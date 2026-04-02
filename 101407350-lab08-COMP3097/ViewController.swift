//
//  ViewController.swift
//  101407350-lab08-COMP3097
//
//  Created by Bryan Yabut on 2026-04-02.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - State Variables
    var value: Int = 0
    var step: Int = 1
    
    // MARK: - Outlets
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var stepButton: UIButton!

    @IBOutlet weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
        valueLabel.layer.borderColor = UIColor.systemGray.cgColor
        valueLabel.layer.borderWidth = 1.0
        valueLabel.layer.cornerRadius = 6
        valueLabel.clipsToBounds = true
        
        if let container = containerView {
            container.backgroundColor = UIColor.systemYellow.withAlphaComponent(0.4)
            container.layer.cornerRadius = 20
        }
    }

    // MARK: - Actions
    @IBAction func minusTapped(_ sender: UIButton) {
        value -= step
        updateUI()
    }
    
    @IBAction func plusTapped(_ sender: UIButton) {
        value += step
        updateUI()
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        value = 0
        updateUI()
    }
    
    @IBAction func stepTapped(_ sender: UIButton) {
        step = (step == 1) ? 2 : 1
        updateUI()
    }
    
    // MARK: - Helper Method
    func updateUI() {
        valueLabel.text = "\(value)"
        stepButton.setTitle("Step = \(step)", for: .normal)
    }
}


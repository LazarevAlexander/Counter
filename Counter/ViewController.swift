//
//  ViewController.swift
//  Counter
//
//  Created by Alexander Lazarev on 12.01.2025.
//

import UIKit

class ViewController: UIViewController {

    private var countClick: Int = 0
    
    @IBOutlet weak var historyCounter: UITextView!
    
    @IBOutlet weak var infoCounter: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var reduceButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    
    @IBAction func addClick(_ sender: Any) {
        countClick += 1
        valueCounter(countClick)
        historyCounter.insertText(timeClick() + ": значение изменено на +1\n")
    }
    
    @IBAction func reduceClick(_ sender: Any) {
        if countClick > 0 {
            countClick -= 1
            valueCounter(countClick)
            historyCounter.insertText(timeClick() + ": значение изменено на -1\n")
        } else {
            historyCounter.insertText(timeClick() + ": попытка уменьшить значение счётчика ниже 0\n")
        }
    }
    
    @IBAction func clearClick(_ sender: Any) {
        countClick = 0
        valueCounter(countClick)
        historyCounter.insertText(timeClick() + ": значение сброшено\n")
    }
    
    private func timeClick() -> String {
        let getDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        return dateFormatter.string(from: getDate)
    }
        
    private func valueCounter(_ count: Int){
        infoCounter.text = "Значение счётчика: \(count)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyCounter.text = "История изменений:\n"
        // Do any additional setup after loading the view.
    }


}


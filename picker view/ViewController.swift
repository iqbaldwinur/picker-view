//
//  ViewController.swift
//  picker view
//
//  Created by Iqbal Dwi Nur Khoirul anam on 17/10/18.
//  Copyright © 2018 iqbal project. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
   
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    var data = ["Alpukat", "Apel", "Pisang", "Ceri", "Durian", "jambu air", "Strawberry", "Anggur", "Melon", "Manggis"]
    
    var datajumlah = ["Satu", "Dua", "Tiga", "Empat", "Lima", "enam", "Tujuh" ,"Delapan", "Sembilan", "Sepuluh"]
    override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return datajumlah[row]
        }else {
        return data[row]
    }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            textfield.text = datajumlah[row]
        }else {
            textfield2.text = data[row]
        }
        }
    }
    
    
    


        



    

    





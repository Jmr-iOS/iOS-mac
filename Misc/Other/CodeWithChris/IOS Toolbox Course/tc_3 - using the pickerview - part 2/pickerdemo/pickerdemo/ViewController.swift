//
//  ViewController.swift
//  PickerDemo
//
//
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var stationPicker: UIPickerView!;
    
    let stationsArray:[String] = ["Cat", "Dog", "Bird", "Mouse"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.stationPicker.dataSource = self;
        self.stationPicker.delegate   = self;
        
        return;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        return;
    }

    //Delegate Methods
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stationsArray.count;
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stationsArray[row];
    }

    //Datsource Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;       //Just one col!
    }

}



//
//  ViewController.swift
//  Controles
//
//  Created by kevin on 23/4/18.
//  Copyright © 2018 kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //////Segement
    @IBOutlet weak var mysegment: UISegmentedControl!
    @IBOutlet weak var texto: UILabel!
    /////////////////////////////
    //////Slider
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var texto2: UILabel!
    /////////////////////////////
    ///////Switch
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var texto3: UILabel!
    //////////////////////////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    ///////////fucn segement
    @IBAction  func  indexChanged ( _  sender : AnyObject ) {
        switch  mysegment .selectedSegmentIndex
        {
        case 0 :
            texto .text = "Primer segmento seleccionado";
        case 1 :
            texto .text = "Segundo segmento seleccionado";
            default :
            break 
        } 
    }
    ////////////////////////////////////////
    /////////func slider
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        var currentValue = Int(sender.value)
        
        texto2.text = "\(currentValue)"
        
    }
    ///////////////////////////////////////
    //////func switch
    
    @IBAction func stateChanged(_ sender: UISwitch) {
        if mySwitch.isOn{
            texto3.text = "Esta encendido"
        }else{
            texto3.text = "Esta apagado"
        }
    }
    


}


//
//  ViewController.swift
//  MediaPlayerApp
//
//  Created by Jungman Bae on 7/5/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        title = "MediaPlayer"
    }
    
    
}

#Preview {
    PreviewSupport {
        UINavigationController(rootViewController: ViewController())
    }
}

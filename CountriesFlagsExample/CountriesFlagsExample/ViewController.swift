//
//  ViewController.swift
//  CountriesFlagsExample
//

import UIKit
import CountriesFlags

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage.flag(for: .Ukraine, with: imageView.frame.size)
    }
}

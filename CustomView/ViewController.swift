//
//  ViewController.swift
//  CustomView
//
//  Created by Chhan Sophearith on 19/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    let testView: TestView = {
        var view = TestView()
        view = .fromNib()
        view.backgroundColor = .systemPink
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(testView)
        testView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        testView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        testView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        testView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }


}

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle(for: T.self).loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}

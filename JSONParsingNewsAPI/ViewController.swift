//
//  ViewController.swift
//  JSONParsingNewsAPI
//
//  Created by Shah, Shubham on 11/12/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // API endpoint
        
        let urlString = "https://newsapi.org/v2/top-headlines?country=us&apikey=c7cad6c1223d48d0a81671c730e7be39&page=1"
        
        let url = URL(string: urlString)
        guard url != nil else { return }
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error == nil && data != nil {
                // Parse JSON
                let decoder = JSONDecoder()
                do {
                    let newsFeed = try decoder.decode(NewsFeed.self, from: data!)
                    print(newsFeed)
                }
                catch {
                    print("Error in JSON Parsing")
                }
            }
        }
        
        // API Call
        dataTask.resume()
    }


}


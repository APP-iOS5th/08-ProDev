//
//  MediaListTableViewController.swift
//  MediaPlayerApp
//
//  Created by Jungman Bae on 7/5/24.
//

import UIKit

class MediaListTableViewController: UITableViewController {
    
    let items: [MediaItem] = MediaItem.samples

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "MediaPlayer"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mediaItemCell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mediaItemCell", for: indexPath)

        var config = cell.defaultContentConfiguration()    
        config.text = items[indexPath.row].title
        
        cell.contentConfiguration = config
        
        return cell
    }
    

}

#Preview {
    UINavigationController(rootViewController: MediaListTableViewController())
}

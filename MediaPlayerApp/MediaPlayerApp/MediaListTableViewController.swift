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
        
        let item = items[indexPath.row]

        var config = cell.defaultContentConfiguration()    
        config.text = item.title
        config.image = UIImage(systemName: item.isVideo ? "video.square.fill" : "music.note")
        cell.accessoryType = .disclosureIndicator
        cell.contentConfiguration = config
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        
        let viewController = ViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }

}

#Preview {
    UINavigationController(rootViewController: MediaListTableViewController())
}

//
//  ViewController.swift
//  DynamicTableViewExample
//
//  Created by Rune Madsen on 4/12/17.
//  Copyright © 2017 Rune Madsen. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let strings = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam semper massa ante, sed molestie nunc pharetra sed. Mauris a metus quis diam varius viverra. Sed ac malesuada leo. Donec sagittis nunc vel condimentum ullamcorper. Curabitur nec semper massa. Suspendisse semper, lectus eget fermentum scelerisque, mi ligula consectetur lectus, eu vehicula sem diam eget justo. Duis sit amet urna in eros lobortis egestas nec at quam.", "Curabitur non felis eget leo dapibus gravida congue non neque. In quis rhoncus metus.", "Aliquam erat volutpat. Nam blandit sollicitudin congue. Maecenas venenatis, nisi nec pharetra tempus, eros nulla volutpat risus, eget posuere augue urna ac velit. Ut sed sapien ut sapien fermentum auctor et nec mi. Sed scelerisque venenatis dolor, et bibendum velit porta a. Aenean ut efficitur felis, id efficitur tortor. Phasellus id tortor suscipit, imperdiet mi eget, malesuada nibh. Cras et felis ac sapien pretium suscipit in faucibus neque. Donec accumsan non tellus vitae rutrum. Phasellus sit amet pharetra eros. Fusce vitae odio dui. Sed viverra a tellus rhoncus pharetra. Nulla ac turpis dui.\n\nDuis eget elementum orci. Etiam vitae pellentesque justo, non iaculis augue. Nullam ut urna at nisl luctus venenatis id eu quam. Quisque nec nunc dictum, rutrum quam id, ultrices lectus. Fusce aliquam lacus ut mauris hendrerit aliquam. Pellentesque porttitor a risus vitae tempor. Phasellus lorem ipsum, semper quis ex id, rutrum sodales libero.", "More text here", "Sed justo metus, imperdiet quis volutpat ac, ullamcorper sit amet arcu. Praesent commodo, nisl ut condimentum imperdiet, sapien arcu placerat ipsum, in hendrerit justo libero sed erat. Mauris sit amet erat et turpis porta cursus. Praesent sit amet dapibus erat. Sed non neque et mi pretium accumsan. Sed a felis at sem cursus tempor. Aliquam a lacus finibus diam consequat feugiat non ac lacus. Suspendisse luctus elit sed porta porta. Aenean ut odio sed urna posuere rhoncus sed in metus. Morbi auctor eu nunc vitae commodo. Aenean in lorem eget est volutpat mattis a et erat. Duis convallis ullamcorper massa, in viverra neque consequat sit amet. Nam efficitur consectetur felis id viverra. Nunc dignissim ligula laoreet lacus viverra scelerisque. Donec purus lectus, dapibus sit amet nibh aliquet, tristique sodales sapien."]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.reuseIdentifier())
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier(), for: indexPath) as! TableViewCell
        cell.label.text = strings[indexPath.row]
        return cell
    }


}


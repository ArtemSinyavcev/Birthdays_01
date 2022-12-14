//
//  ViewController.swift
//  Birthdays_1
//
//  Created by Артём Синявцев on 06.12.2022.
//

import UIKit

class ViewController: UIViewController {

    let idTable = "iDTable"
    var poisk = UISearchController()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.dataSource = self
        tableView.delegate = self
        
            // добавление БОЛЬШОГО Navigation Bar
        self.navigationController?.navigationBar.prefersLargeTitles = true
            // добавление СТРОКИ ПОИСКА, расширяем класс через extension(ниже) и создаем переменную (выше)
        poisk = UISearchController(searchResultsController: nil)
        poisk.searchResultsUpdater = self
        self.navigationItem.searchController = poisk
        
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: idTable) as! OneTableCell
        cell.dataTable.text = "17 января 1991 г."
        cell.nameTable.text = "Синявцев Артем"
        cell.imageTable.image = UIImage(named: "smoke1")
        cell.imageTable.layer.cornerRadius = 40
        cell.textLabel?.text = String(indexPath.item)
        
        return cell
    }
    
             // ВЫСОТА ЯЧЕЙКИ (heightForRowAt)
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100.0
        
    }
   
}

extension ViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
         
    }

}

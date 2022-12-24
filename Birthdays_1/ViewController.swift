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
        tableView.reloadData()
        // добавление БОЛЬШОГО Navigation Bar
        self.navigationController?.navigationBar.prefersLargeTitles = true
        // добавление СТРОКИ ПОИСКА, расширяем класс через extension(ниже) и создаем переменную (выше)
        poisk = UISearchController(searchResultsController: nil)
        poisk.searchResultsUpdater = self
        self.navigationItem.searchController = poisk
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        tableView.reloadData()
        
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Singleton.shared.massiv.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idTable) as! OneTableCell
        cell.dateTableLabel.text = Singleton.shared.massiv[indexPath.row].date
        cell.nameTableLabel.text = Singleton.shared.massiv[indexPath.row].name
        cell.backgroundColor = .systemGray6
        cell.fotoTableImageView.image = UIImage(named: "image")
        //cell.fotoTableImageView.layer.cornerRadius = 40
        cell.textLabel?.text = String(indexPath.item + 1)
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("нажал добавить\(indexPath.row)")
        
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

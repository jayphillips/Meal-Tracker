//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Jay Phillips on 6/11/20.
//  Copyright © 2020 devNasium. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        let breakfastItem1 = Food(name: "Eggs", description: "Scambled")
        let breakfastItem2 = Food(name: "Sausage", description: "Country seasoned patties.")
        let breakfastItem3 = Food(name: "Potatoes", description: "Diced and fried.")
        let breakfast = Meal(name: "Breakfast", food: [breakfastItem1, breakfastItem2, breakfastItem3])
        
        let lunchItem1 = Food(name: "Cheeseburger", description: "All beef patties")
        let lunchItem2 = Food(name: "French Fries", description: "Shoestring")
        let lunchItem3 = Food(name: "Coca-cola", description: "Refreshing soft drink")
        let lunch = Meal(name: "Lunch", food: [lunchItem1, lunchItem2, lunchItem3])
        
        let dinnerItem1 = Food(name: "Steak", description: "New York Strip")
        let dinnerItem2 = Food(name: "Broccoli", description: "Green Vegetables")
        let dinnerItem3 = Food(name: "Potato", description: "Baked")
        let dinner = Meal(name: "Dinner", food: [dinnerItem1, dinnerItem2, dinnerItem3])
        
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)

        let meal: Meal = meals[indexPath.section]
        let food: Food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
   

    
}

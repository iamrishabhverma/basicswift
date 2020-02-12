//
//  main.swift
//  pro
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

//we have 2 arrays product and price of N items the user enters N and the product names, prices. after filling up the array then
//let the user enter a product name, if exists it's price and ask the user to enter required quantity
//when the user enters the quantity find the total price and add the tax then print the total

import Foundation

//print("Hello, World!")
func productReading( product: inout[String],price: inout[Double],n:Int)   {
    for _ in 0..<n{
        print("Enter the product Name: ")
        // add to the array by using append
    //    var p = readLine()!
        product.append(readLine()!)
        print("Enter the product price : ")
        price.append(Double(readLine()!)!)
        
    }
}
//func finds product ny name and returns and the product index

func searchByName(product: [String],name :String) ->Int {
    for i in 0..<product.count {
        if name==product[i] {
            return i
        }
    }
    return -1
}
// func fins the product by its name and retrns price
func priceByName(product:[String] , price: [Double] , name :String) ->Double {
    for i in 0..<product.count {
        if name==product[i] {
            return price[i]
        }
    }
    return -1
}
//func to find and return the average of prices of all products



//func to increase the prices of all products which less than $30 by 10% and print their names and new prices


let n = Int(readLine()!)!
print("How many products do u have?")
var product = [String]()
var price = [Double]()

productReading(product :&product, price: &price,n: n)
print("Enter th eproduct name u want to buy..")
var name:String = readLine()!
var p = searchByName(product: product, name: name)
if p == -1
{
    print("Product not found")
}
else
{
    print("Price of the product is: \(price[p])" )
   print("Enter the required quantity: ")
    var qty = Double(readLine()!)!
    var total = price[p] * qty * 1.13
    print("The total price is: \(total)")
}
//getting the price of the required product
var pr = priceByName(product: product, price: price, name: name)
if p == -1
{
    print("Product not found")
}
else
{
    print("Price of the product is: \(pr)" )
   print("Enter the required quantity: ")
    var qty = Double(readLine()!)!
}

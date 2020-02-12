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
func productReading( n:Int) -> (product:[String], price:[Double]){
    var product = [String]()
    var price = [Double]()
    for i in 1...n{
        print("Enter the product Name: ")
        // add to the array by using append
        product.append(readLine()!)
        print("Enter the product price : ")
       price.append(Double(readLine()!)!)
    }
    return (product, price)
}
func searchByName(product:[String], price:[Double], name: String ) -> Double {
    for i in 0..<product.count{
        if name == product[i]
        {
            return price[i]
        }
    }
    return -1.0
}


func incPrice(product: inout [String], price: inout [Double])
{
    for i in 0..<product.count{
        if(price[i]>30.0)
        {
            price[i] = price[i]*1.30
            print("New Price for \(product[i]) is : \(price[i])")
        }
    }
}

func avg(price:[Double]) -> Double
{
    var sum:Double = 0
    for i in 0..<price.count{
        sum = sum + price[i]
    }
    return (sum/Double(price.count))
}
print("How many products do u have?")

let n : Int = Int(readLine()!)!
var product = [String]()
var price = [Double]()
(product,price) = productReading(n:n)
print("Enter product to buy")
var name:String = readLine()!
var p:Double = searchByName(product: product,price:price, name: name)
if(p == -1)
{
    print("Not Found")
    exit(0)
}
print("Price is \(p) \n Enter Quantity to buy")
var qty:Int = Int(readLine()!)!
print("Total cost \(Double(qty)*p)")
incPrice(product: &product, price:&price)
print("Average is \(avg(price: price))")

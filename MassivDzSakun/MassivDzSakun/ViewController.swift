//
//  ViewController.swift
//  MassivDzSakun
//
//  Created by Evgeny Sakun on 11.12.23.
//

import UIKit

class ViewController: UIViewController {
   
    // 1:
    var mx = [(1, "x"), (4, "y"), (6, "a"), (9, "u"), (5, "k")]
    // 2:
    var array = [2, 3, 4, 5, 6, 7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //1: Функция вычисления факториала числа - через передачу массива в параметр функции. Массив из 6 чисел -> Факториал числа \(numbers), равен ????
        
        factorial1(array: array)
        
        func factorial1(array: [Int]) -> [Int] {
            return array.map { num in
                let fact = factorial(num)
                print("Факториал \(num) равен \(fact)")
                return fact
            }
        }
        
        
        func factorial(_ x: Int) -> Int {
            if x < 1 {
                return 1
            }
            return x * factorial(x-1)
        }
        
        //2: Массив из кортежей - возвести Int в квадрат
        //отфильтровать только четные Int -> [4, 6]
        //упорядочить по строкам по возрастанию -> [a, k, u, x, y]
        
        
        tuples(tup: mx)
        
        func tuples(tup: [(Int, String)]) {
            let str1 = tup.map ({ $0.1 })
            let str2 = str1.sorted(by: <)
            let int1 = tup.map ({$0.0 * $0.0})
            let int2 = tup.filter ({$0.0 % 2 == 0})
            let int22 = int2.map ({$0.0})
            print(int22)
            print(int1)
            print(str2)
        }
        
        
        


        }
    }
            


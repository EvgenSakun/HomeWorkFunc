//
//  ViewController.swift
//  FuncHomeWork
//
//  Created by mac on 4.12.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  1. Универсальные функции сложения, вычитания, умножения и
        //   деления (перегрузка функций)
        print(load(3, 5))
        // 2. Вычислить сумму цифр четырехзначного числа
        print(sum(3333))
        // 3. Функция сравнения строк - "авб" больше "ввш"
        comprasion("абв", "ввш")
        // 4. Циклический вызов функции - поломать приложение
        print(polomka(5))
        
        func polomka(_ a: Int) {
            print(5 + a)
            polomka(5)
        }
            // 5. Функция возведения в степень с дефолтным параметром
            construction(5)
        }
        
        // 1:
        
        func load(_ a: Int, _ b: Int) -> Int {
            return a + b
        }
        func load(_ a: Double, _ b: Double) -> Double {
            return a - b
        }
        func load(_ a: Float, _ b: Float) -> Float {
            return a / b
        }
        func load(_ a: Int, _ b: Int, _ c: Int) -> Int {
            return a * b * c
        }
        // 2:
        func sum(_ a : Int) -> Int {
            var a = a
            var sum1 = 0
            while a > 0 {
                sum1 += a % 10
                a /= 10
            }
            return sum1
        }
        // 3:
        func comprasion(_ a: String, _ b: String) {
            if a > b {
                print("Первая строка больше")
            } else {
                print("Вторая строка больше")
            }
        }
        // 5:
        func construction(_ a: Double) {
            print(pow(a,2))
        }
        
        
    }


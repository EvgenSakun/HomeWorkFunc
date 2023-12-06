//
//  ViewController.swift
//  OptionalEnumDz
//
//  Created by Evgeny Sakun on 6.12.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1:
        optional()
        
        func optional(_ aser: Int? = nil) {
            if let aser {
                print(aser * 2)
            } else {
                print("Значение отсутствует")
            }
        }
        
        // 2:
        forceunwrap()
        
        func forceunwrap(_ a: String? = nil) {
            if a != nil {
                print("Hello, \(a!)")
            } else {
                print("Ошибка")
            }
        }
        
        // 3:
        guardlet()
        
        func guardlet(_ a: Int? = nil) {
            guard let b = a else {
                print("Значение отсутствует")
                return
            }
            print(b + 20)
            print(b * 30)
            print(b - 15)
        }
        
        // 4:
        
        construction("asd")
        
        func construction(_ a: String? = nil) {
            if let b = Int(a!) {
                print(b)
            } else {
                return
            }
            
        }
        
        // 5:
        
        enumeration()
        
        enum Book {
            case chapterOne(pages: Int)
            case chapterTwo(pages: Int)
            case chapterThree(pages: Int)
        }
        
        func enumeration() {
            let book1 = Book.chapterThree(pages: 128)
            print(book1)
        }
        
        // 6:
        let Clothes1 = Clothes.clothesType1.ShirtRed
        let wardrobe = Clothes.UseClothesType1(type1: Clothes1)
        wardrobe.getClothes()
        
        
        
        enum Clothes {
            enum clothesType1 {
                case ShirtRed
                case ShortsBlue
               
            }
            enum clothesType2 {
                case ShirtBlue
                case ShortsRed
                
            }
            case UseClothesType1(type1: clothesType1)
            case UseClothesType2(type2: clothesType2)
            
            func getClothes() {
                switch self {
                case .UseClothesType1(let type1):
                    print("Хочу надеть \(type1)")
                case .UseClothesType2(let type2):
                    print("Хочу надеть \(type2)")
                }
            }
        }
        
    }


}


//
//  MatematikRepository.swift
//  MVVMDesignBasics
//
//  Created by Doğukan Küçükler on 29.02.2024.
//

import Foundation
import RxSwift

class MatematikRepository {
    var sonuc = BehaviorSubject<String>(value: "0")
    
    func toplamaYap(alinanSayi1 : String, alinanSayi2 : String){
        if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2) {
            let toplam = sayi1 + sayi2
            sonuc.onNext(String(toplam)) //tetikleme
        }
        
    }
        
        func carpmaYap(alinanSayi1 : String, alinanSayi2 : String){
            if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2) {
                let carpma = sayi1 * sayi2
                sonuc.onNext(String(carpma)) //tetikleme
            }
        }
}

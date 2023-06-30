//
//  DataStore.swift
//  ContactsListSwiftUI
//
//  Created by Roman Lantsov on 04.05.2023.
//

final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven",
        "Sharon",
        "Nicola",
        "Allan",
        "Bruce",
        "Carl"
    ]
    
    let surnames = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankin",
        "Butler",
        "Black",
        "Robertson",
        "Murphy",
        "Williams"
    ]
    
    let emails = [
        "vvvv@mail.ru",
        "aaaa@mail.ru",
        "yyyy@mail.ru",
        "rrrr@mail.ru",
        "wwww@mail.ru",
        "qqqq@mail.ru",
        "xxxx@mail.ru",
        "zzzz@mail.ru",
        "kkkk@mail.ru",
        "jjjj@mail.ru"
    ]
    
    let phones = [
        "+7 (453) 960-26-32",
        "+7 (450) 368-43-55",
        "+7 (871) 856-56-11",
        "+7 (935) 209-54-78",
        "+7 (628) 802-25-81",
        "+7 (385) 940-72-21",
        "+7 (256) 541-34-29",
        "+7 (458) 984-73-02",
        "+7 (323) 498-45-84",
        "+7 (594) 776-25-95"
    ]
    
    private init() {}
}

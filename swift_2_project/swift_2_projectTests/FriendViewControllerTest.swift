//
//  FriendViewControllerTest.swift
//  swift_2_projectTests
//
//  Created by Артур on 29.03.2024.
//

import XCTest
@testable import CleanSwift

class FriendViewControllerTests: XCTestCase {
    
    
    
    var friendViewController: FriendViewController!
    
   
    
    override func setUp() {
        super.setUp()
        friendViewController = FriendViewController()
        friendViewController.loadViewIfNeeded() // Загружаем view контроллера
    }
    
    override func tearDown() {
        friendViewController = nil
        super.tearDown()
    }
    
   
    
    func testViewDidLoad_SetsTitle() {
        // Проверяем, что заголовок view контроллера установлен правильно
        XCTAssertEqual(friendViewController.title, "Friends")
    }
    
    
}

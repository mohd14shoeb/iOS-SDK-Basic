import XCTest
@testable import iOS_SDK_Basic

final class iOS_SDK_BasicTests: XCTestCase {

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to get an unexpected failure when an error occurs.
        // Mark your test async to get an await for when an async operation completes.

        // Test that the shared instance exists
        XCTAssertNotNull(SDKDemoManager.shared)

        // Test that we can create view controllers
        let firstVC = FirstDemoViewController()
        XCTAssertNotNull(firstVC)

        let secondVC = SecondDemoViewController()
        XCTAssertNotNull(secondVC)

        let thirdVC = ThirdDemoViewController()
        XCTAssertNotNull(thirdVC)

        let fourthVC = FourthDemoViewController()
        XCTAssertNotNull(fourthVC)
    }

}
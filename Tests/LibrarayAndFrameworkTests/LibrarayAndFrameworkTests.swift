import XCTest
@testable import LibrarayAndFramework
import CommonFriendSDK
import Alamofire
import SwiftyJSON

final class LibrarayAndFrameworkTests: XCTestCase {
    func testExample() throws {
        
        //will set when fatching contact from native
        ContactSyncingObj.shared.apiCallContactSyncing( completion: {
        success,message in
            
            if success == true
            {
                print(message ?? "")
            }
            else
            {
                print(message ?? "")
            }
            
        })
        
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
}

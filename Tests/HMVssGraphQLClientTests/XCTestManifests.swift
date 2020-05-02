import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(hm_vss_graphql_client_swiftTests.allTests),
    ]
}
#endif

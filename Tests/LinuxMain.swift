import XCTest

import dexTests

var tests = [XCTestCaseEntry]()
tests += dexTests.allTests()
XCTMain(tests)

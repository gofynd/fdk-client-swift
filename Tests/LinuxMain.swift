import XCTest

import codeTests

var tests = [XCTestCaseEntry]()
tests += codeTests.allTests()
XCTMain(tests)

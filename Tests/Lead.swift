import XCTest
@testable import FDKClient

final class LeadTestCase: XCTestCase {
    func testPDP() {
        let expectation = XCTestExpectation(description: "GET PRODUCT")

        guard let config = ApplicationConfig(
            applicationId: "000000000000000000000001",
            applicationToken: "9502d710-5a22-11e9-a001-57d85417c280") else {
                return
        }

        let applicationClient = ApplicationClient(config: config)
        applicationClient.catalog.getProductDetailBySlug(slug: "w-off-white-printed-regular-kurta-5") { (product, error) in
            if let product = product {
                XCTAssertEqual(product.slug, "w-off-white-printed-regular-kurta-5")
                print("Product Slug: " + product.slug)
            } else if let error = error {
                XCTAssertTrue(false)
                print("Error: " + error.message)
            }
            
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10.0)
    }
}



import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreResponse
         Used By: Logistic
     */
    class ReAssignStoreResponse: Codable {
        public var store: [String: Any]

        public var pageNo: Int

        public var company: [String: Any]

        public var error: [String: Any]

        public var assignedStores: [[String: Any]]

        public var customerDetails: [String: Any]

        public var pageSize: Int

        public var article: [String: Any]

        public var articles: [[String: Any]]?

        public var success: Bool

        public var toPincode: String

        public enum CodingKeys: String, CodingKey {
            case store

            case pageNo = "page_no"

            case company

            case error

            case assignedStores = "assigned_stores"

            case customerDetails = "customer_details"

            case pageSize = "page_size"

            case article

            case articles

            case success

            case toPincode = "to_pincode"
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], pageNo: Int, pageSize: Int, store: [String: Any], success: Bool, toPincode: String) {
            self.store = store

            self.pageNo = pageNo

            self.company = company

            self.error = error

            self.assignedStores = assignedStores

            self.customerDetails = customerDetails

            self.pageSize = pageSize

            self.article = article

            self.articles = articles

            self.success = success

            self.toPincode = toPincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            store = try container.decode([String: Any].self, forKey: .store)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            company = try container.decode([String: Any].self, forKey: .company)

            error = try container.decode([String: Any].self, forKey: .error)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            article = try container.decode([String: Any].self, forKey: .article)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            toPincode = try container.decode(String.self, forKey: .toPincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
        }
    }
}

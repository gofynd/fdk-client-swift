

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreResponse
         Used By: Logistic
     */
    class ReAssignStoreResponse: Codable {
        public var store: [String: Any]

        public var article: [String: Any]

        public var pageSize: Int

        public var toPincode: String

        public var error: [String: Any]

        public var customerDetails: [String: Any]

        public var assignedStores: [[String: Any]]

        public var success: Bool

        public var pageNo: Int

        public var articles: [[String: Any]]?

        public var company: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case store

            case article

            case pageSize = "page_size"

            case toPincode = "to_pincode"

            case error

            case customerDetails = "customer_details"

            case assignedStores = "assigned_stores"

            case success

            case pageNo = "page_no"

            case articles

            case company
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], pageNo: Int, pageSize: Int, store: [String: Any], success: Bool, toPincode: String) {
            self.store = store

            self.article = article

            self.pageSize = pageSize

            self.toPincode = toPincode

            self.error = error

            self.customerDetails = customerDetails

            self.assignedStores = assignedStores

            self.success = success

            self.pageNo = pageNo

            self.articles = articles

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            store = try container.decode([String: Any].self, forKey: .store)

            article = try container.decode([String: Any].self, forKey: .article)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            error = try container.decode([String: Any].self, forKey: .error)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            success = try container.decode(Bool.self, forKey: .success)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}

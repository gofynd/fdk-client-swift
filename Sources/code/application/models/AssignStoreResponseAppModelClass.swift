

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var pageSize: Int

        public var assignedStores: [[String: Any]]

        public var articles: [[String: Any]]?

        public var toPincode: String

        public var pystormbreakerUuid: String

        public var company: [String: Any]

        public var article: [String: Any]

        public var success: Bool

        public var customerDetails: [String: Any]

        public var error: [String: Any]

        public var pageNo: Int

        public var store: [String: Any]

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case pageSize = "page_size"

            case assignedStores = "assigned_stores"

            case articles

            case toPincode = "to_pincode"

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case company

            case article

            case success

            case customerDetails = "customer_details"

            case error

            case pageNo = "page_no"

            case store

            case items
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.pageSize = pageSize

            self.assignedStores = assignedStores

            self.articles = articles

            self.toPincode = toPincode

            self.pystormbreakerUuid = pystormbreakerUuid

            self.company = company

            self.article = article

            self.success = success

            self.customerDetails = customerDetails

            self.error = error

            self.pageNo = pageNo

            self.store = store

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            toPincode = try container.decode(String.self, forKey: .toPincode)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            company = try container.decode([String: Any].self, forKey: .company)

            article = try container.decode([String: Any].self, forKey: .article)

            success = try container.decode(Bool.self, forKey: .success)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            error = try container.decode([String: Any].self, forKey: .error)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            store = try container.decode([String: Any].self, forKey: .store)

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

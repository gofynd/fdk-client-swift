

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var error: [String: Any]

        public var article: [String: Any]

        public var pageNo: Int

        public var pystormbreakerUuid: String

        public var toPincode: String

        public var store: [String: Any]

        public var pageSize: Int

        public var company: [String: Any]

        public var assignedStores: [[String: Any]]

        public var success: Bool

        public var articles: [[String: Any]]?

        public var customerDetails: [String: Any]

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case error

            case article

            case pageNo = "page_no"

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case toPincode = "to_pincode"

            case store

            case pageSize = "page_size"

            case company

            case assignedStores = "assigned_stores"

            case success

            case articles

            case customerDetails = "customer_details"

            case items
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.error = error

            self.article = article

            self.pageNo = pageNo

            self.pystormbreakerUuid = pystormbreakerUuid

            self.toPincode = toPincode

            self.store = store

            self.pageSize = pageSize

            self.company = company

            self.assignedStores = assignedStores

            self.success = success

            self.articles = articles

            self.customerDetails = customerDetails

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode([String: Any].self, forKey: .error)

            article = try container.decode([String: Any].self, forKey: .article)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            store = try container.decode([String: Any].self, forKey: .store)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            company = try container.decode([String: Any].self, forKey: .company)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

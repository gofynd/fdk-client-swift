

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var customerDetails: [String: Any]

        public var store: [String: Any]

        public var pageSize: Int

        public var pageNo: Int

        public var articles: [[String: Any]]?

        public var article: [String: Any]

        public var toPincode: String

        public var error: [String: Any]

        public var pystormbreakerUuid: String

        public var success: Bool

        public var assignedStores: [[String: Any]]

        public var items: [String: Any]

        public var company: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case customerDetails = "customer_details"

            case store

            case pageSize = "page_size"

            case pageNo = "page_no"

            case articles

            case article

            case toPincode = "to_pincode"

            case error

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case success

            case assignedStores = "assigned_stores"

            case items

            case company
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.customerDetails = customerDetails

            self.store = store

            self.pageSize = pageSize

            self.pageNo = pageNo

            self.articles = articles

            self.article = article

            self.toPincode = toPincode

            self.error = error

            self.pystormbreakerUuid = pystormbreakerUuid

            self.success = success

            self.assignedStores = assignedStores

            self.items = items

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            store = try container.decode([String: Any].self, forKey: .store)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode([String: Any].self, forKey: .article)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            error = try container.decode([String: Any].self, forKey: .error)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            success = try container.decode(Bool.self, forKey: .success)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            items = try container.decode([String: Any].self, forKey: .items)

            company = try container.decode([String: Any].self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}



import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var assignedStores: [[String: Any]]

        public var article: [String: Any]

        public var company: [String: Any]

        public var articles: [[String: Any]]?

        public var customerDetails: [String: Any]

        public var pageNo: Int

        public var pystormbreakerUuid: String

        public var toPincode: String

        public var store: [String: Any]

        public var success: Bool

        public var items: [String: Any]

        public var error: [String: Any]

        public var pageSize: Int

        public enum CodingKeys: String, CodingKey {
            case assignedStores = "assigned_stores"

            case article

            case company

            case articles

            case customerDetails = "customer_details"

            case pageNo = "page_no"

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case toPincode = "to_pincode"

            case store

            case success

            case items

            case error

            case pageSize = "page_size"
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.assignedStores = assignedStores

            self.article = article

            self.company = company

            self.articles = articles

            self.customerDetails = customerDetails

            self.pageNo = pageNo

            self.pystormbreakerUuid = pystormbreakerUuid

            self.toPincode = toPincode

            self.store = store

            self.success = success

            self.items = items

            self.error = error

            self.pageSize = pageSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            article = try container.decode([String: Any].self, forKey: .article)

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            store = try container.decode([String: Any].self, forKey: .store)

            success = try container.decode(Bool.self, forKey: .success)

            items = try container.decode([String: Any].self, forKey: .items)

            error = try container.decode([String: Any].self, forKey: .error)

            pageSize = try container.decode(Int.self, forKey: .pageSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        }
    }
}

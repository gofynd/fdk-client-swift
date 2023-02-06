

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var items: [String: Any]

        public var company: [String: Any]

        public var pageNo: Int

        public var success: Bool

        public var pageSize: Int

        public var store: [String: Any]

        public var pystormbreakerUuid: String

        public var error: [String: Any]

        public var assignedStores: [[String: Any]]

        public var customerDetails: [String: Any]

        public var toPincode: String

        public var articles: [[String: Any]]?

        public var article: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case items

            case company

            case pageNo = "page_no"

            case success

            case pageSize = "page_size"

            case store

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case error

            case assignedStores = "assigned_stores"

            case customerDetails = "customer_details"

            case toPincode = "to_pincode"

            case articles

            case article
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.items = items

            self.company = company

            self.pageNo = pageNo

            self.success = success

            self.pageSize = pageSize

            self.store = store

            self.pystormbreakerUuid = pystormbreakerUuid

            self.error = error

            self.assignedStores = assignedStores

            self.customerDetails = customerDetails

            self.toPincode = toPincode

            self.articles = articles

            self.article = article
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([String: Any].self, forKey: .items)

            company = try container.decode([String: Any].self, forKey: .company)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            success = try container.decode(Bool.self, forKey: .success)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            store = try container.decode([String: Any].self, forKey: .store)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            error = try container.decode([String: Any].self, forKey: .error)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode([String: Any].self, forKey: .article)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(article, forKey: .article)
        }
    }
}

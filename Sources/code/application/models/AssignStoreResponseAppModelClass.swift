

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var pageSize: Int

        public var success: Bool

        public var store: [String: Any]

        public var assignedStores: [[String: Any]]

        public var items: [String: Any]

        public var pystormbreakerUuid: String

        public var pageNo: Int

        public var error: [String: Any]

        public var articles: [[String: Any]]?

        public var customerDetails: [String: Any]

        public var company: [String: Any]

        public var toPincode: String

        public var article: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case pageSize = "page_size"

            case success

            case store

            case assignedStores = "assigned_stores"

            case items

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case pageNo = "page_no"

            case error

            case articles

            case customerDetails = "customer_details"

            case company

            case toPincode = "to_pincode"

            case article
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.pageSize = pageSize

            self.success = success

            self.store = store

            self.assignedStores = assignedStores

            self.items = items

            self.pystormbreakerUuid = pystormbreakerUuid

            self.pageNo = pageNo

            self.error = error

            self.articles = articles

            self.customerDetails = customerDetails

            self.company = company

            self.toPincode = toPincode

            self.article = article
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            success = try container.decode(Bool.self, forKey: .success)

            store = try container.decode([String: Any].self, forKey: .store)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            items = try container.decode([String: Any].self, forKey: .items)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            error = try container.decode([String: Any].self, forKey: .error)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            company = try container.decode([String: Any].self, forKey: .company)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            article = try container.decode([String: Any].self, forKey: .article)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(article, forKey: .article)
        }
    }
}

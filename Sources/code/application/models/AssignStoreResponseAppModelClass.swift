

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var store: [String: Any]

        public var pageNo: Int

        public var articles: [[String: Any]]?

        public var pystormbreakerUuid: String

        public var error: [String: Any]

        public var company: [String: Any]

        public var toPincode: String

        public var pageSize: Int

        public var items: [String: Any]

        public var assignedStores: [[String: Any]]

        public var success: Bool

        public var customerDetails: [String: Any]

        public var article: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case store

            case pageNo = "page_no"

            case articles

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case error

            case company

            case toPincode = "to_pincode"

            case pageSize = "page_size"

            case items

            case assignedStores = "assigned_stores"

            case success

            case customerDetails = "customer_details"

            case article
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.store = store

            self.pageNo = pageNo

            self.articles = articles

            self.pystormbreakerUuid = pystormbreakerUuid

            self.error = error

            self.company = company

            self.toPincode = toPincode

            self.pageSize = pageSize

            self.items = items

            self.assignedStores = assignedStores

            self.success = success

            self.customerDetails = customerDetails

            self.article = article
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            store = try container.decode([String: Any].self, forKey: .store)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            error = try container.decode([String: Any].self, forKey: .error)

            company = try container.decode([String: Any].self, forKey: .company)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            items = try container.decode([String: Any].self, forKey: .items)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            success = try container.decode(Bool.self, forKey: .success)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            article = try container.decode([String: Any].self, forKey: .article)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(article, forKey: .article)
        }
    }
}



import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var assignedStores: [[String: Any]]

        public var company: [String: Any]

        public var articles: [[String: Any]]?

        public var customerDetails: [String: Any]

        public var success: Bool

        public var toPincode: String

        public var pageSize: Int

        public var store: [String: Any]

        public var pageNo: Int

        public var error: [String: Any]

        public var items: [String: Any]

        public var pystormbreakerUuid: String

        public var article: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case assignedStores = "assigned_stores"

            case company

            case articles

            case customerDetails = "customer_details"

            case success

            case toPincode = "to_pincode"

            case pageSize = "page_size"

            case store

            case pageNo = "page_no"

            case error

            case items

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case article
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.assignedStores = assignedStores

            self.company = company

            self.articles = articles

            self.customerDetails = customerDetails

            self.success = success

            self.toPincode = toPincode

            self.pageSize = pageSize

            self.store = store

            self.pageNo = pageNo

            self.error = error

            self.items = items

            self.pystormbreakerUuid = pystormbreakerUuid

            self.article = article
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            success = try container.decode(Bool.self, forKey: .success)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            store = try container.decode([String: Any].self, forKey: .store)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            error = try container.decode([String: Any].self, forKey: .error)

            items = try container.decode([String: Any].self, forKey: .items)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            article = try container.decode([String: Any].self, forKey: .article)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(article, forKey: .article)
        }
    }
}



import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var articles: [[String: Any]]?

        public var toPincode: String

        public var company: [String: Any]

        public var pageSize: Int

        public var items: [String: Any]

        public var customerDetails: [String: Any]

        public var pystormbreakerUuid: String

        public var pageNo: Int

        public var error: [String: Any]

        public var success: Bool

        public var assignedStores: [[String: Any]]

        public var store: [String: Any]

        public var article: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case articles

            case toPincode = "to_pincode"

            case company

            case pageSize = "page_size"

            case items

            case customerDetails = "customer_details"

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case pageNo = "page_no"

            case error

            case success

            case assignedStores = "assigned_stores"

            case store

            case article
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.articles = articles

            self.toPincode = toPincode

            self.company = company

            self.pageSize = pageSize

            self.items = items

            self.customerDetails = customerDetails

            self.pystormbreakerUuid = pystormbreakerUuid

            self.pageNo = pageNo

            self.error = error

            self.success = success

            self.assignedStores = assignedStores

            self.store = store

            self.article = article
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            toPincode = try container.decode(String.self, forKey: .toPincode)

            company = try container.decode([String: Any].self, forKey: .company)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            items = try container.decode([String: Any].self, forKey: .items)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            error = try container.decode([String: Any].self, forKey: .error)

            success = try container.decode(Bool.self, forKey: .success)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            store = try container.decode([String: Any].self, forKey: .store)

            article = try container.decode([String: Any].self, forKey: .article)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(article, forKey: .article)
        }
    }
}

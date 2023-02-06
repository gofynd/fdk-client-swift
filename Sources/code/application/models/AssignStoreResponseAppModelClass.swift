

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var pageNo: Int

        public var items: [String: Any]

        public var pageSize: Int

        public var article: [String: Any]

        public var assignedStores: [[String: Any]]

        public var customerDetails: [String: Any]

        public var store: [String: Any]

        public var success: Bool

        public var articles: [[String: Any]]?

        public var pystormbreakerUuid: String

        public var company: [String: Any]

        public var toPincode: String

        public var error: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case pageNo = "page_no"

            case items

            case pageSize = "page_size"

            case article

            case assignedStores = "assigned_stores"

            case customerDetails = "customer_details"

            case store

            case success

            case articles

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case company

            case toPincode = "to_pincode"

            case error
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.pageNo = pageNo

            self.items = items

            self.pageSize = pageSize

            self.article = article

            self.assignedStores = assignedStores

            self.customerDetails = customerDetails

            self.store = store

            self.success = success

            self.articles = articles

            self.pystormbreakerUuid = pystormbreakerUuid

            self.company = company

            self.toPincode = toPincode

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            items = try container.decode([String: Any].self, forKey: .items)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            article = try container.decode([String: Any].self, forKey: .article)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            store = try container.decode([String: Any].self, forKey: .store)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            company = try container.decode([String: Any].self, forKey: .company)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            error = try container.decode([String: Any].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}

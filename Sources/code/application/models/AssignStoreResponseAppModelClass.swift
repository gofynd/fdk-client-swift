

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var success: Bool

        public var toPincode: String

        public var items: [String: Any]

        public var assignedStores: [[String: Any]]

        public var pystormbreakerUuid: String

        public var article: [String: Any]

        public var articles: [[String: Any]]?

        public var pageNo: Int

        public var pageSize: Int

        public var store: [String: Any]

        public var customerDetails: [String: Any]

        public var company: [String: Any]

        public var error: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case success

            case toPincode = "to_pincode"

            case items

            case assignedStores = "assigned_stores"

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case article

            case articles

            case pageNo = "page_no"

            case pageSize = "page_size"

            case store

            case customerDetails = "customer_details"

            case company

            case error
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.success = success

            self.toPincode = toPincode

            self.items = items

            self.assignedStores = assignedStores

            self.pystormbreakerUuid = pystormbreakerUuid

            self.article = article

            self.articles = articles

            self.pageNo = pageNo

            self.pageSize = pageSize

            self.store = store

            self.customerDetails = customerDetails

            self.company = company

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            items = try container.decode([String: Any].self, forKey: .items)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            article = try container.decode([String: Any].self, forKey: .article)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            store = try container.decode([String: Any].self, forKey: .store)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            company = try container.decode([String: Any].self, forKey: .company)

            error = try container.decode([String: Any].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}

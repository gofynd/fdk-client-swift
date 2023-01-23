

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var pageSize: Int

        public var assignedStores: [[String: Any]]

        public var company: [String: Any]

        public var store: [String: Any]

        public var pageNo: Int

        public var articles: [[String: Any]]?

        public var pystormbreakerUuid: String

        public var success: Bool

        public var items: [String: Any]

        public var article: [String: Any]

        public var customerDetails: [String: Any]

        public var toPincode: String

        public var error: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case pageSize = "page_size"

            case assignedStores = "assigned_stores"

            case company

            case store

            case pageNo = "page_no"

            case articles

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case success

            case items

            case article

            case customerDetails = "customer_details"

            case toPincode = "to_pincode"

            case error
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.pageSize = pageSize

            self.assignedStores = assignedStores

            self.company = company

            self.store = store

            self.pageNo = pageNo

            self.articles = articles

            self.pystormbreakerUuid = pystormbreakerUuid

            self.success = success

            self.items = items

            self.article = article

            self.customerDetails = customerDetails

            self.toPincode = toPincode

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            company = try container.decode([String: Any].self, forKey: .company)

            store = try container.decode([String: Any].self, forKey: .store)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            success = try container.decode(Bool.self, forKey: .success)

            items = try container.decode([String: Any].self, forKey: .items)

            article = try container.decode([String: Any].self, forKey: .article)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            error = try container.decode([String: Any].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}

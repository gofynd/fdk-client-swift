

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var customerDetails: [String: Any]

        public var store: [String: Any]

        public var items: [String: Any]

        public var pageNo: Int

        public var pageSize: Int

        public var pystormbreakerUuid: String

        public var articles: [[String: Any]]?

        public var assignedStores: [[String: Any]]

        public var company: [String: Any]

        public var error: [String: Any]

        public var success: Bool

        public var article: [String: Any]

        public var toPincode: String

        public enum CodingKeys: String, CodingKey {
            case customerDetails = "customer_details"

            case store

            case items

            case pageNo = "page_no"

            case pageSize = "page_size"

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case articles

            case assignedStores = "assigned_stores"

            case company

            case error

            case success

            case article

            case toPincode = "to_pincode"
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.customerDetails = customerDetails

            self.store = store

            self.items = items

            self.pageNo = pageNo

            self.pageSize = pageSize

            self.pystormbreakerUuid = pystormbreakerUuid

            self.articles = articles

            self.assignedStores = assignedStores

            self.company = company

            self.error = error

            self.success = success

            self.article = article

            self.toPincode = toPincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            store = try container.decode([String: Any].self, forKey: .store)

            items = try container.decode([String: Any].self, forKey: .items)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            company = try container.decode([String: Any].self, forKey: .company)

            error = try container.decode([String: Any].self, forKey: .error)

            success = try container.decode(Bool.self, forKey: .success)

            article = try container.decode([String: Any].self, forKey: .article)

            toPincode = try container.decode(String.self, forKey: .toPincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
        }
    }
}

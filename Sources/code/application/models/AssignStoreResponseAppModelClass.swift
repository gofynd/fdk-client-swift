

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var toPincode: String

        public var items: [String: Any]

        public var company: [String: Any]

        public var pageSize: Int

        public var article: [String: Any]

        public var success: Bool

        public var pageNo: Int

        public var store: [String: Any]

        public var articles: [[String: Any]]?

        public var customerDetails: [String: Any]

        public var error: [String: Any]

        public var assignedStores: [[String: Any]]

        public var pystormbreakerUuid: String

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case items

            case company

            case pageSize = "page_size"

            case article

            case success

            case pageNo = "page_no"

            case store

            case articles

            case customerDetails = "customer_details"

            case error

            case assignedStores = "assigned_stores"

            case pystormbreakerUuid = "pystormbreaker_uuid"
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.toPincode = toPincode

            self.items = items

            self.company = company

            self.pageSize = pageSize

            self.article = article

            self.success = success

            self.pageNo = pageNo

            self.store = store

            self.articles = articles

            self.customerDetails = customerDetails

            self.error = error

            self.assignedStores = assignedStores

            self.pystormbreakerUuid = pystormbreakerUuid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            items = try container.decode([String: Any].self, forKey: .items)

            company = try container.decode([String: Any].self, forKey: .company)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            article = try container.decode([String: Any].self, forKey: .article)

            success = try container.decode(Bool.self, forKey: .success)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            store = try container.decode([String: Any].self, forKey: .store)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            error = try container.decode([String: Any].self, forKey: .error)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)
        }
    }
}



import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var pageSize: Int

        public var company: [String: Any]

        public var articles: [[String: Any]]?

        public var success: Bool

        public var store: [String: Any]

        public var error: [String: Any]

        public var items: [String: Any]

        public var pageNo: Int

        public var article: [String: Any]

        public var customerDetails: [String: Any]

        public var pystormbreakerUuid: String

        public var assignedStores: [[String: Any]]

        public var toPincode: String

        public enum CodingKeys: String, CodingKey {
            case pageSize = "page_size"

            case company

            case articles

            case success

            case store

            case error

            case items

            case pageNo = "page_no"

            case article

            case customerDetails = "customer_details"

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case assignedStores = "assigned_stores"

            case toPincode = "to_pincode"
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.pageSize = pageSize

            self.company = company

            self.articles = articles

            self.success = success

            self.store = store

            self.error = error

            self.items = items

            self.pageNo = pageNo

            self.article = article

            self.customerDetails = customerDetails

            self.pystormbreakerUuid = pystormbreakerUuid

            self.assignedStores = assignedStores

            self.toPincode = toPincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            store = try container.decode([String: Any].self, forKey: .store)

            error = try container.decode([String: Any].self, forKey: .error)

            items = try container.decode([String: Any].self, forKey: .items)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            article = try container.decode([String: Any].self, forKey: .article)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            toPincode = try container.decode(String.self, forKey: .toPincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
        }
    }
}

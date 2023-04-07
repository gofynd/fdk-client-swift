

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: AssignStoreResponse
         Used By: Logistic
     */
    class AssignStoreResponse: Codable {
        public var company: [String: Any]

        public var article: [String: Any]

        public var store: [String: Any]

        public var customerDetails: [String: Any]

        public var pageNo: Int

        public var assignedStores: [[String: Any]]

        public var items: [String: Any]

        public var success: Bool

        public var error: [String: Any]

        public var toPincode: String

        public var pageSize: Int

        public var pystormbreakerUuid: String

        public var articles: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case company

            case article

            case store

            case customerDetails = "customer_details"

            case pageNo = "page_no"

            case assignedStores = "assigned_stores"

            case items

            case success

            case error

            case toPincode = "to_pincode"

            case pageSize = "page_size"

            case pystormbreakerUuid = "pystormbreaker_uuid"

            case articles
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            self.company = company

            self.article = article

            self.store = store

            self.customerDetails = customerDetails

            self.pageNo = pageNo

            self.assignedStores = assignedStores

            self.items = items

            self.success = success

            self.error = error

            self.toPincode = toPincode

            self.pageSize = pageSize

            self.pystormbreakerUuid = pystormbreakerUuid

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode([String: Any].self, forKey: .company)

            article = try container.decode([String: Any].self, forKey: .article)

            store = try container.decode([String: Any].self, forKey: .store)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)

            items = try container.decode([String: Any].self, forKey: .items)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode([String: Any].self, forKey: .error)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}

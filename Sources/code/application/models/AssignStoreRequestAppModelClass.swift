

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var articles: [[String: Any]]

        public var customerDetails: [String: Any]

        public var toPincode: String

        public var identifier: String

        public var applicationConfig: [String: Any]

        public var extensionConfig: [String: Any]

        public var pageNo: Int

        public var pageSize: Int

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case articles

            case customerDetails = "customer_details"

            case toPincode = "to_pincode"

            case identifier

            case applicationConfig = "application_config"

            case extensionConfig = "extension_config"

            case pageNo = "page_no"

            case pageSize = "page_size"

            case items
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.articles = articles

            self.customerDetails = customerDetails

            self.toPincode = toPincode

            self.identifier = identifier

            self.applicationConfig = applicationConfig

            self.extensionConfig = extensionConfig

            self.pageNo = pageNo

            self.pageSize = pageSize

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            identifier = try container.decode(String.self, forKey: .identifier)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

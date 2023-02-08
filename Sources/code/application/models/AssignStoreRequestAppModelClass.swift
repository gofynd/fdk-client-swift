

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var customerDetails: [String: Any]

        public var pageNo: Int

        public var pageSize: Int

        public var extensionConfig: [String: Any]

        public var articles: [[String: Any]]

        public var toPincode: String

        public var applicationConfig: [String: Any]

        public var identifier: String

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case customerDetails = "customer_details"

            case pageNo = "page_no"

            case pageSize = "page_size"

            case extensionConfig = "extension_config"

            case articles

            case toPincode = "to_pincode"

            case applicationConfig = "application_config"

            case identifier

            case items
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.customerDetails = customerDetails

            self.pageNo = pageNo

            self.pageSize = pageSize

            self.extensionConfig = extensionConfig

            self.articles = articles

            self.toPincode = toPincode

            self.applicationConfig = applicationConfig

            self.identifier = identifier

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            identifier = try container.decode(String.self, forKey: .identifier)

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

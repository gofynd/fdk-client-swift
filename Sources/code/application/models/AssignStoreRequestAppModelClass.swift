

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var items: [String: Any]

        public var toPincode: String

        public var pageSize: Int

        public var pageNo: Int

        public var applicationConfig: [String: Any]

        public var articles: [[String: Any]]

        public var customerDetails: [String: Any]

        public var identifier: String

        public var extensionConfig: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case items

            case toPincode = "to_pincode"

            case pageSize = "page_size"

            case pageNo = "page_no"

            case applicationConfig = "application_config"

            case articles

            case customerDetails = "customer_details"

            case identifier

            case extensionConfig = "extension_config"
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.items = items

            self.toPincode = toPincode

            self.pageSize = pageSize

            self.pageNo = pageNo

            self.applicationConfig = applicationConfig

            self.articles = articles

            self.customerDetails = customerDetails

            self.identifier = identifier

            self.extensionConfig = extensionConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([String: Any].self, forKey: .items)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            identifier = try container.decode(String.self, forKey: .identifier)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)
        }
    }
}

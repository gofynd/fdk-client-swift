

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var items: [String: Any]

        public var applicationConfig: [String: Any]

        public var pageSize: Int

        public var extensionConfig: [String: Any]

        public var identifier: String

        public var pageNo: Int

        public var toPincode: String

        public var customerDetails: [String: Any]

        public var articles: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case items

            case applicationConfig = "application_config"

            case pageSize = "page_size"

            case extensionConfig = "extension_config"

            case identifier

            case pageNo = "page_no"

            case toPincode = "to_pincode"

            case customerDetails = "customer_details"

            case articles
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.items = items

            self.applicationConfig = applicationConfig

            self.pageSize = pageSize

            self.extensionConfig = extensionConfig

            self.identifier = identifier

            self.pageNo = pageNo

            self.toPincode = toPincode

            self.customerDetails = customerDetails

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([String: Any].self, forKey: .items)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            identifier = try container.decode(String.self, forKey: .identifier)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            articles = try container.decode([[String: Any]].self, forKey: .articles)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}

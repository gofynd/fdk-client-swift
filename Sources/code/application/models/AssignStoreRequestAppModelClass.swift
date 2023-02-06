

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var applicationConfig: [String: Any]

        public var pageSize: Int

        public var toPincode: String

        public var extensionConfig: [String: Any]

        public var pageNo: Int

        public var items: [String: Any]

        public var identifier: String

        public var customerDetails: [String: Any]

        public var articles: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case applicationConfig = "application_config"

            case pageSize = "page_size"

            case toPincode = "to_pincode"

            case extensionConfig = "extension_config"

            case pageNo = "page_no"

            case items

            case identifier

            case customerDetails = "customer_details"

            case articles
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.applicationConfig = applicationConfig

            self.pageSize = pageSize

            self.toPincode = toPincode

            self.extensionConfig = extensionConfig

            self.pageNo = pageNo

            self.items = items

            self.identifier = identifier

            self.customerDetails = customerDetails

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            items = try container.decode([String: Any].self, forKey: .items)

            identifier = try container.decode(String.self, forKey: .identifier)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            articles = try container.decode([[String: Any]].self, forKey: .articles)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}

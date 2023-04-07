

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var customerDetails: [String: Any]

        public var pageNo: Int

        public var extensionConfig: [String: Any]

        public var items: [String: Any]

        public var toPincode: String

        public var pageSize: Int

        public var applicationConfig: [String: Any]

        public var identifier: String

        public var articles: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case customerDetails = "customer_details"

            case pageNo = "page_no"

            case extensionConfig = "extension_config"

            case items

            case toPincode = "to_pincode"

            case pageSize = "page_size"

            case applicationConfig = "application_config"

            case identifier

            case articles
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.customerDetails = customerDetails

            self.pageNo = pageNo

            self.extensionConfig = extensionConfig

            self.items = items

            self.toPincode = toPincode

            self.pageSize = pageSize

            self.applicationConfig = applicationConfig

            self.identifier = identifier

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            items = try container.decode([String: Any].self, forKey: .items)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            identifier = try container.decode(String.self, forKey: .identifier)

            articles = try container.decode([[String: Any]].self, forKey: .articles)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}

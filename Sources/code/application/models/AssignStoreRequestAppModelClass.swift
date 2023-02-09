

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var pageNo: Int

        public var identifier: String

        public var applicationConfig: [String: Any]

        public var customerDetails: [String: Any]

        public var articles: [[String: Any]]

        public var items: [String: Any]

        public var toPincode: String

        public var extensionConfig: [String: Any]

        public var pageSize: Int

        public enum CodingKeys: String, CodingKey {
            case pageNo = "page_no"

            case identifier

            case applicationConfig = "application_config"

            case customerDetails = "customer_details"

            case articles

            case items

            case toPincode = "to_pincode"

            case extensionConfig = "extension_config"

            case pageSize = "page_size"
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.pageNo = pageNo

            self.identifier = identifier

            self.applicationConfig = applicationConfig

            self.customerDetails = customerDetails

            self.articles = articles

            self.items = items

            self.toPincode = toPincode

            self.extensionConfig = extensionConfig

            self.pageSize = pageSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            identifier = try container.decode(String.self, forKey: .identifier)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            items = try container.decode([String: Any].self, forKey: .items)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            pageSize = try container.decode(Int.self, forKey: .pageSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        }
    }
}

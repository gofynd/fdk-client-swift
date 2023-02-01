

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var identifier: String

        public var applicationConfig: [String: Any]

        public var articles: [[String: Any]]

        public var extensionConfig: [String: Any]

        public var toPincode: String

        public var customerDetails: [String: Any]

        public var pageNo: Int

        public var items: [String: Any]

        public var pageSize: Int

        public enum CodingKeys: String, CodingKey {
            case identifier

            case applicationConfig = "application_config"

            case articles

            case extensionConfig = "extension_config"

            case toPincode = "to_pincode"

            case customerDetails = "customer_details"

            case pageNo = "page_no"

            case items

            case pageSize = "page_size"
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.identifier = identifier

            self.applicationConfig = applicationConfig

            self.articles = articles

            self.extensionConfig = extensionConfig

            self.toPincode = toPincode

            self.customerDetails = customerDetails

            self.pageNo = pageNo

            self.items = items

            self.pageSize = pageSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            items = try container.decode([String: Any].self, forKey: .items)

            pageSize = try container.decode(Int.self, forKey: .pageSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        }
    }
}

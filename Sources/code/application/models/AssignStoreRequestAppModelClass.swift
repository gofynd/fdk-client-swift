

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var items: [String: Any]

        public var articles: [[String: Any]]

        public var pageNo: Int

        public var pageSize: Int

        public var applicationConfig: [String: Any]

        public var toPincode: String

        public var customerDetails: [String: Any]

        public var extensionConfig: [String: Any]

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case items

            case articles

            case pageNo = "page_no"

            case pageSize = "page_size"

            case applicationConfig = "application_config"

            case toPincode = "to_pincode"

            case customerDetails = "customer_details"

            case extensionConfig = "extension_config"

            case identifier
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.items = items

            self.articles = articles

            self.pageNo = pageNo

            self.pageSize = pageSize

            self.applicationConfig = applicationConfig

            self.toPincode = toPincode

            self.customerDetails = customerDetails

            self.extensionConfig = extensionConfig

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([String: Any].self, forKey: .items)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

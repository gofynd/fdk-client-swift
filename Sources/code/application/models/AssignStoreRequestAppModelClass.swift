

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var articles: [[String: Any]]

        public var toPincode: String

        public var extensionConfig: [String: Any]

        public var items: [String: Any]

        public var pageSize: Int

        public var customerDetails: [String: Any]

        public var pageNo: Int

        public var applicationConfig: [String: Any]

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case articles

            case toPincode = "to_pincode"

            case extensionConfig = "extension_config"

            case items

            case pageSize = "page_size"

            case customerDetails = "customer_details"

            case pageNo = "page_no"

            case applicationConfig = "application_config"

            case identifier
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.articles = articles

            self.toPincode = toPincode

            self.extensionConfig = extensionConfig

            self.items = items

            self.pageSize = pageSize

            self.customerDetails = customerDetails

            self.pageNo = pageNo

            self.applicationConfig = applicationConfig

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            items = try container.decode([String: Any].self, forKey: .items)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

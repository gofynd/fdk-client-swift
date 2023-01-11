

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var pageSize: Int

        public var applicationConfig: [String: Any]

        public var articles: [[String: Any]]

        public var extensionConfig: [String: Any]

        public var items: [String: Any]

        public var pageNo: Int

        public var identifier: String

        public var customerDetails: [String: Any]

        public var toPincode: String

        public enum CodingKeys: String, CodingKey {
            case pageSize = "page_size"

            case applicationConfig = "application_config"

            case articles

            case extensionConfig = "extension_config"

            case items

            case pageNo = "page_no"

            case identifier

            case customerDetails = "customer_details"

            case toPincode = "to_pincode"
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.pageSize = pageSize

            self.applicationConfig = applicationConfig

            self.articles = articles

            self.extensionConfig = extensionConfig

            self.items = items

            self.pageNo = pageNo

            self.identifier = identifier

            self.customerDetails = customerDetails

            self.toPincode = toPincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            items = try container.decode([String: Any].self, forKey: .items)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            identifier = try container.decode(String.self, forKey: .identifier)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            toPincode = try container.decode(String.self, forKey: .toPincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
        }
    }
}

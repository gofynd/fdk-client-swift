

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var extensionConfig: [String: Any]

        public var pageNo: Int

        public var articles: [[String: Any]]

        public var applicationConfig: [String: Any]

        public var toPincode: String

        public var pageSize: Int

        public var identifier: String

        public var items: [String: Any]

        public var customerDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case extensionConfig = "extension_config"

            case pageNo = "page_no"

            case articles

            case applicationConfig = "application_config"

            case toPincode = "to_pincode"

            case pageSize = "page_size"

            case identifier

            case items

            case customerDetails = "customer_details"
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.extensionConfig = extensionConfig

            self.pageNo = pageNo

            self.articles = articles

            self.applicationConfig = applicationConfig

            self.toPincode = toPincode

            self.pageSize = pageSize

            self.identifier = identifier

            self.items = items

            self.customerDetails = customerDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            identifier = try container.decode(String.self, forKey: .identifier)

            items = try container.decode([String: Any].self, forKey: .items)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)
        }
    }
}



import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var pageNo: Int

        public var extensionConfig: [String: Any]

        public var toPincode: String

        public var applicationConfig: [String: Any]

        public var pageSize: Int

        public var articles: [[String: Any]]

        public var customerDetails: [String: Any]

        public var items: [String: Any]

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case pageNo = "page_no"

            case extensionConfig = "extension_config"

            case toPincode = "to_pincode"

            case applicationConfig = "application_config"

            case pageSize = "page_size"

            case articles

            case customerDetails = "customer_details"

            case items

            case identifier
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.pageNo = pageNo

            self.extensionConfig = extensionConfig

            self.toPincode = toPincode

            self.applicationConfig = applicationConfig

            self.pageSize = pageSize

            self.articles = articles

            self.customerDetails = customerDetails

            self.items = items

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            items = try container.decode([String: Any].self, forKey: .items)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

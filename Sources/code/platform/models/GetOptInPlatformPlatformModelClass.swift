

import Foundation
public extension PlatformClient {
    /*
         Model: GetOptInPlatform
         Used By: Catalog
     */

    class GetOptInPlatform: Codable {
        public var page: Page

        public var items: [CompanyOptIn]

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [CompanyOptIn], page: Page) {
            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            items = try container.decode([CompanyOptIn].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}



import Foundation

public extension PlatformClient.Order {
    /*
         Model: GetBagsPlatformResponse
         Used By: Order
     */

    class GetBagsPlatformResponse: Codable {
        public var page: BagsPage

        public var items: [BagDetailsPlatformResponse]

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [BagDetailsPlatformResponse], page: BagsPage) {
            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(BagsPage.self, forKey: .page)

            items = try container.decode([BagDetailsPlatformResponse].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: GetBagsPlatformResponse
         Used By: Order
     */

    class GetBagsPlatformResponse: Codable {
        public var page: BagsPage

        public var items: [BagDetailsPlatformResponse]

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [BagDetailsPlatformResponse], page: BagsPage) {
            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(BagsPage.self, forKey: .page)

            items = try container.decode([BagDetailsPlatformResponse].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

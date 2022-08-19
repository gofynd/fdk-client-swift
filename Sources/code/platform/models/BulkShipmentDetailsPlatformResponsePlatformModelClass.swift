

import Foundation
public extension PlatformClient {
    /*
         Model: BulkShipmentDetailsPlatformResponse
         Used By: Order
     */

    class BulkShipmentDetailsPlatformResponse: Codable {
        public var items: [Shipment]

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [Shipment], page: Page) {
            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([Shipment].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}

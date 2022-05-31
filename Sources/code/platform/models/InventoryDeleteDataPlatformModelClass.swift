

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryDeleteData
         Used By: Catalog
     */

    class InventoryDeleteData: Codable {
        public var locationId: Int?

        public var itemId: Int?

        public var size: String?

        public enum CodingKeys: String, CodingKey {
            case locationId = "location_id"

            case itemId = "item_id"

            case size
        }

        public init(itemId: Int? = nil, locationId: Int? = nil, size: String? = nil) {
            self.locationId = locationId

            self.itemId = itemId

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                locationId = try container.decode(Int.self, forKey: .locationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationId, forKey: .locationId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}

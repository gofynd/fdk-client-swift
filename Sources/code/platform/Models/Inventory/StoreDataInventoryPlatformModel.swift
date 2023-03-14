

import Foundation

public extension PlatformClient.Inventory {
    /*
         Model: StoreData
         Used By: Inventory
     */

    class StoreData: Codable {
        public var locationId: String?

        public enum CodingKeys: String, CodingKey {
            case locationId = "location_id"
        }

        public init(locationId: String? = nil) {
            self.locationId = locationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                locationId = try container.decode(String.self, forKey: .locationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationId, forKey: .locationId)
        }
    }
}

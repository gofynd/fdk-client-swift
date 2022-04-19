import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: LocationIntegrationType
         Used By: Catalog
     */

    class LocationIntegrationType: Codable {
        public var order: String?

        public var inventory: String?

        public enum CodingKeys: String, CodingKey {
            case order

            case inventory
        }

        public init(inventory: String?, order: String?) {
            self.order = order

            self.inventory = inventory
        }

        public func duplicate() -> LocationIntegrationType {
            let dict = self.dictionary!
            let copy = LocationIntegrationType(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(String.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventory = try container.decode(String.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(inventory, forKey: .inventory)
        }
    }
}

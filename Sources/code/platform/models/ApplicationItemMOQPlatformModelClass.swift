

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationItemMOQ
         Used By: Catalog
     */

    class ApplicationItemMOQ: Codable {
        public var minQty: Int?

        public var multiplier: Int?

        public var maxQty: Int?

        public enum CodingKeys: String, CodingKey {
            case minQty = "min_qty"

            case multiplier

            case maxQty = "max_qty"
        }

        public init(maxQty: Int? = nil, minQty: Int? = nil, multiplier: Int? = nil) {
            self.minQty = minQty

            self.multiplier = multiplier

            self.maxQty = maxQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minQty = try container.decode(Int.self, forKey: .minQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiplier = try container.decode(Int.self, forKey: .multiplier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxQty = try container.decode(Int.self, forKey: .maxQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minQty, forKey: .minQty)

            try? container.encodeIfPresent(multiplier, forKey: .multiplier)

            try? container.encodeIfPresent(maxQty, forKey: .maxQty)
        }
    }
}

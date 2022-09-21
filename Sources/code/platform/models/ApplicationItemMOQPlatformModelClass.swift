

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationItemMOQ
         Used By: Catalog
     */

    class ApplicationItemMOQ: Codable {
        public var maxQty: Int?

        public var multiplier: Int?

        public var minQty: Int?

        public enum CodingKeys: String, CodingKey {
            case maxQty = "max_qty"

            case multiplier

            case minQty = "min_qty"
        }

        public init(maxQty: Int? = nil, minQty: Int? = nil, multiplier: Int? = nil) {
            self.maxQty = maxQty

            self.multiplier = multiplier

            self.minQty = minQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                maxQty = try container.decode(Int.self, forKey: .maxQty)

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
                minQty = try container.decode(Int.self, forKey: .minQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maxQty, forKey: .maxQty)

            try? container.encodeIfPresent(multiplier, forKey: .multiplier)

            try? container.encodeIfPresent(minQty, forKey: .minQty)
        }
    }
}
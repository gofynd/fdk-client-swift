

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentTotalDetails
         Used By: Order
     */
    class ShipmentTotalDetails: Codable {
        public var sizes: Double?

        public var pieces: Double?

        public var totalPrice: Double?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case pieces

            case totalPrice = "total_price"
        }

        public init(pieces: Double? = nil, sizes: Double? = nil, totalPrice: Double? = nil) {
            self.sizes = sizes

            self.pieces = pieces

            self.totalPrice = totalPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode(Double.self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pieces = try container.decode(Double.self, forKey: .pieces)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalPrice = try container.decode(Double.self, forKey: .totalPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(pieces, forKey: .pieces)

            try? container.encodeIfPresent(totalPrice, forKey: .totalPrice)
        }
    }
}

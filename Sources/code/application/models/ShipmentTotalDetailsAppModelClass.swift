

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentTotalDetails
         Used By: Order
     */
    class ShipmentTotalDetails: Codable {
        public var pieces: Int?

        public var sizes: Int?

        public var totalPrice: Double?

        public enum CodingKeys: String, CodingKey {
            case pieces

            case sizes

            case totalPrice = "total_price"
        }

        public init(pieces: Int? = nil, sizes: Int? = nil, totalPrice: Double? = nil) {
            self.pieces = pieces

            self.sizes = sizes

            self.totalPrice = totalPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pieces = try container.decode(Int.self, forKey: .pieces)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode(Int.self, forKey: .sizes)

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

            try? container.encodeIfPresent(pieces, forKey: .pieces)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(totalPrice, forKey: .totalPrice)
        }
    }
}

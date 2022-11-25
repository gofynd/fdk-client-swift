

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentTotalDetails
         Used By: Order
     */
    class ShipmentTotalDetails: Codable {
        public var totalPrice: Double?

        public var sizes: Int?

        public var pieces: Int?

        public enum CodingKeys: String, CodingKey {
            case totalPrice = "total_price"

            case sizes

            case pieces
        }

        public init(pieces: Int? = nil, sizes: Int? = nil, totalPrice: Double? = nil) {
            self.totalPrice = totalPrice

            self.sizes = sizes

            self.pieces = pieces
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalPrice = try container.decode(Double.self, forKey: .totalPrice)

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
                pieces = try container.decode(Int.self, forKey: .pieces)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalPrice, forKey: .totalPrice)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(pieces, forKey: .pieces)
        }
    }
}

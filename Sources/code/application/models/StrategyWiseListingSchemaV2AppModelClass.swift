

import Foundation
public extension ApplicationClient {
    /*
         Model: StrategyWiseListingSchemaV2
         Used By: Catalog
     */
    class StrategyWiseListingSchemaV2: Codable {
        public var distance: Int?

        public var tat: Int?

        public var quantity: Int?

        public var pincode: Int?

        public enum CodingKeys: String, CodingKey {
            case distance

            case tat

            case quantity

            case pincode
        }

        public init(distance: Int? = nil, pincode: Int? = nil, quantity: Int? = nil, tat: Int? = nil) {
            self.distance = distance

            self.tat = tat

            self.quantity = quantity

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                distance = try container.decode(Int.self, forKey: .distance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tat = try container.decode(Int.self, forKey: .tat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(distance, forKey: .distance)

            try? container.encodeIfPresent(tat, forKey: .tat)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}

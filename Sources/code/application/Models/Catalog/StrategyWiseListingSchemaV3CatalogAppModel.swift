

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: StrategyWiseListingSchemaV3
         Used By: Catalog
     */
    class StrategyWiseListingSchemaV3: Codable {
        public var pincode: Int?

        public var distance: Int?

        public var tat: Int?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case distance

            case tat

            case quantity
        }

        public init(distance: Int? = nil, pincode: Int? = nil, quantity: Int? = nil, tat: Int? = nil) {
            self.pincode = pincode

            self.distance = distance

            self.tat = tat

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(distance, forKey: .distance)

            try? container.encodeIfPresent(tat, forKey: .tat)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: InventorySet
         Used By: Catalog
     */

    class InventorySet: Codable {
        public var sizeDistribution: SizeDistribution

        public var name: String?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case sizeDistribution = "size_distribution"

            case name

            case quantity
        }

        public init(name: String? = nil, quantity: Int? = nil, sizeDistribution: SizeDistribution) {
            self.sizeDistribution = sizeDistribution

            self.name = name

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sizeDistribution = try container.decode(SizeDistribution.self, forKey: .sizeDistribution)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

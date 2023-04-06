

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductSetV2
         Used By: Catalog
     */
    class ProductSetV2: Codable {
        public var sizeDistribution: ProductSetDistributionV2?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case sizeDistribution = "size_distribution"

            case quantity
        }

        public init(quantity: Int? = nil, sizeDistribution: ProductSetDistributionV2? = nil) {
            self.sizeDistribution = sizeDistribution

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizeDistribution = try container.decode(ProductSetDistributionV2.self, forKey: .sizeDistribution)

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

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

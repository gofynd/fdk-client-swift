

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductSetDistributionV3
         Used By: Catalog
     */
    class ProductSetDistributionV3: Codable {
        public var sizes: [ProductSetDistributionSizeV3]?

        public enum CodingKeys: String, CodingKey {
            case sizes
        }

        public init(sizes: [ProductSetDistributionSizeV3]? = nil) {
            self.sizes = sizes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode([ProductSetDistributionSizeV3].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }
}

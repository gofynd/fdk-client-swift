

import Foundation
public extension PlatformClient {
    /*
         Model: BoxDetails
         Used By: OrderInvoiceEngine
     */

    class BoxDetails: Codable {
        public var boxId: String

        public var totalQuantity: String

        public var packageCount: String

        public var dimension: String

        public var weight: String

        public enum CodingKeys: String, CodingKey {
            case boxId = "box_id"

            case totalQuantity = "total_quantity"

            case packageCount = "package_count"

            case dimension

            case weight
        }

        public init(boxId: String, dimension: String, packageCount: String, totalQuantity: String, weight: String) {
            self.boxId = boxId

            self.totalQuantity = totalQuantity

            self.packageCount = packageCount

            self.dimension = dimension

            self.weight = weight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            boxId = try container.decode(String.self, forKey: .boxId)

            totalQuantity = try container.decode(String.self, forKey: .totalQuantity)

            packageCount = try container.decode(String.self, forKey: .packageCount)

            dimension = try container.decode(String.self, forKey: .dimension)

            weight = try container.decode(String.self, forKey: .weight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(boxId, forKey: .boxId)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(packageCount, forKey: .packageCount)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}

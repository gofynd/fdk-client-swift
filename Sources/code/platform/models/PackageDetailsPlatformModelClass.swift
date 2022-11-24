

import Foundation
public extension PlatformClient {
    /*
         Model: PackageDetails
         Used By: DocumentEngine
     */

    class PackageDetails: Codable {
        public var packageId: String

        public var itemQuantity: String

        public var packageType: String

        public var packagingType: String

        public var dimension: String

        public var weight: String

        public enum CodingKeys: String, CodingKey {
            case packageId = "package_id"

            case itemQuantity = "item_quantity"

            case packageType = "package_type"

            case packagingType = "packaging_type"

            case dimension

            case weight
        }

        public init(dimension: String, itemQuantity: String, packageId: String, packageType: String, packagingType: String, weight: String) {
            self.packageId = packageId

            self.itemQuantity = itemQuantity

            self.packageType = packageType

            self.packagingType = packagingType

            self.dimension = dimension

            self.weight = weight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            packageId = try container.decode(String.self, forKey: .packageId)

            itemQuantity = try container.decode(String.self, forKey: .itemQuantity)

            packageType = try container.decode(String.self, forKey: .packageType)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            dimension = try container.decode(String.self, forKey: .dimension)

            weight = try container.decode(String.self, forKey: .weight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(packageId, forKey: .packageId)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(packageType, forKey: .packageType)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}

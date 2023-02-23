

import Foundation
public extension PlatformClient {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemLength: Double

        public var identifiers: [ValidateIdentifier]?

        public var size: [String: Any]

        public var itemDimensionsUnitOfMeasure: String

        public var itemHeight: Double

        public var itemWeight: Double

        public var itemWidth: Double

        public enum CodingKeys: String, CodingKey {
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemLength = "item_length"

            case identifiers

            case size

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemHeight = "item_height"

            case itemWeight = "item_weight"

            case itemWidth = "item_width"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemLength = itemLength

            self.identifiers = identifiers

            self.size = size

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemHeight = itemHeight

            self.itemWeight = itemWeight

            self.itemWidth = itemWidth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode([String: Any].self, forKey: .size)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
        }
    }
}

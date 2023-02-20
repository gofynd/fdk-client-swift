

import Foundation
public extension PlatformClient {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var identifiers: [ValidateIdentifier]?

        public var itemWeight: Double

        public var size: [String: Any]

        public var itemLength: Double

        public var itemHeight: Double

        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemDimensionsUnitOfMeasure: String

        public var itemWidth: Double

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case itemWeight = "item_weight"

            case size

            case itemLength = "item_length"

            case itemHeight = "item_height"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWidth = "item_width"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.identifiers = identifiers

            self.itemWeight = itemWeight

            self.size = size

            self.itemLength = itemLength

            self.itemHeight = itemHeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWidth = itemWidth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            size = try container.decode([String: Any].self, forKey: .size)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemDimensionsUnitOfMeasure: String

        public var size: [String: Any]

        public var itemHeight: Double

        public var itemWidth: Double

        public var itemWeight: Double

        public var identifiers: [ValidateIdentifier]?

        public var itemLength: Double

        public enum CodingKeys: String, CodingKey {
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case size

            case itemHeight = "item_height"

            case itemWidth = "item_width"

            case itemWeight = "item_weight"

            case identifiers

            case itemLength = "item_length"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.size = size

            self.itemHeight = itemHeight

            self.itemWidth = itemWidth

            self.itemWeight = itemWeight

            self.identifiers = identifiers

            self.itemLength = itemLength
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            size = try container.decode([String: Any].self, forKey: .size)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemLength = try container.decode(Double.self, forKey: .itemLength)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
        }
    }
}

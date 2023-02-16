

import Foundation
public extension PlatformClient {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemHeight: Double

        public var itemDimensionsUnitOfMeasure: String

        public var size: [String: Any]

        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemLength: Double

        public var itemWeight: Double

        public var itemWidth: Double

        public var identifiers: [ValidateIdentifier]?

        public enum CodingKeys: String, CodingKey {
            case itemHeight = "item_height"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case itemWidth = "item_width"

            case identifiers
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemHeight = itemHeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.itemWidth = itemWidth

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            size = try container.decode([String: Any].self, forKey: .size)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}

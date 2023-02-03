

import Foundation
public extension PlatformClient {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemHeight: Double

        public var size: [String: Any]

        public var identifiers: [ValidateIdentifier]?

        public var itemWidth: Double

        public var itemLength: Double

        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemWeight: Double

        public var itemDimensionsUnitOfMeasure: String

        public enum CodingKeys: String, CodingKey {
            case itemHeight = "item_height"

            case size

            case identifiers

            case itemWidth = "item_width"

            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWeight = "item_weight"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemHeight = itemHeight

            self.size = size

            self.identifiers = identifiers

            self.itemWidth = itemWidth

            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWeight = itemWeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            size = try container.decode([String: Any].self, forKey: .size)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
        }
    }
}

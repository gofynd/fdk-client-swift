

import Foundation
public extension PlatformClient {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemWeight: Double

        public var identifiers: [ValidateIdentifier]?

        public var itemWidth: Double

        public var itemLength: Double

        public var size: [String: Any]

        public var itemHeight: Double

        public var itemDimensionsUnitOfMeasure: String

        public var itemWeightUnitOfMeasure: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case identifiers

            case itemWidth = "item_width"

            case itemLength = "item_length"

            case size

            case itemHeight = "item_height"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemWeight = itemWeight

            self.identifiers = identifiers

            self.itemWidth = itemWidth

            self.itemLength = itemLength

            self.size = size

            self.itemHeight = itemHeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            size = try container.decode([String: Any].self, forKey: .size)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemWeight: Double

        public var itemWidth: Double

        public var itemHeight: Double

        public var identifiers: [ValidateIdentifier]?

        public var size: [String: Any]

        public var itemLength: Double

        public var itemDimensionsUnitOfMeasure: String

        public var itemWeightUnitOfMeasure: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case itemWidth = "item_width"

            case itemHeight = "item_height"

            case identifiers

            case size

            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemWeight = itemWeight

            self.itemWidth = itemWidth

            self.itemHeight = itemHeight

            self.identifiers = identifiers

            self.size = size

            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode([String: Any].self, forKey: .size)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
        }
    }
}

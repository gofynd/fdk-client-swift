

import Foundation
public extension PlatformClient {
    /*
         Model: ALLSizes
         Used By: Catalog
     */

    class ALLSizes: Codable {
        public var itemWeight: Double

        public var itemDimensionsUnitOfMeasure: String

        public var itemLength: Double

        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemWidth: Double

        public var itemHeight: Double

        public var identifiers: [ValidateIdentifier]?

        public var size: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWidth = "item_width"

            case itemHeight = "item_height"

            case identifiers

            case size
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemWeight = itemWeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWidth = itemWidth

            self.itemHeight = itemHeight

            self.identifiers = identifiers

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode([String: Any].self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}

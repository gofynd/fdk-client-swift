

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemDimensionsUnitOfMeasure: String

        public var identifiers: [ValidateIdentifier]?

        public var itemLength: Double

        public var itemWeight: Double

        public var itemWidth: Double

        public var size: [String: Any]

        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemHeight: Double

        public enum CodingKeys: String, CodingKey {
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case identifiers

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case itemWidth = "item_width"

            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemHeight = "item_height"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.identifiers = identifiers

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.itemWidth = itemWidth

            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemHeight = itemHeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            size = try container.decode([String: Any].self, forKey: .size)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemDimensionsUnitOfMeasure: String

        public var identifiers: [ValidateIdentifier]?

        public var itemLength: Double

        public var itemWeight: Double

        public var itemWidth: Double

        public var size: [String: Any]

        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemHeight: Double

        public enum CodingKeys: String, CodingKey {
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case identifiers

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case itemWidth = "item_width"

            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemHeight = "item_height"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.identifiers = identifiers

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.itemWidth = itemWidth

            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemHeight = itemHeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            size = try container.decode([String: Any].self, forKey: .size)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
        }
    }
}

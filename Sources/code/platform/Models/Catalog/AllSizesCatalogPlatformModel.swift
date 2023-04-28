

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemWeight: Double

        public var itemHeight: Double

        public var itemDimensionsUnitOfMeasure: String

        public var size: [String: Any]

        public var itemLength: Double

        public var identifiers: [ValidateIdentifier]?

        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemWidth: Double

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case itemHeight = "item_height"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case size

            case itemLength = "item_length"

            case identifiers

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWidth = "item_width"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemWeight = itemWeight

            self.itemHeight = itemHeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.size = size

            self.itemLength = itemLength

            self.identifiers = identifiers

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWidth = itemWidth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            size = try container.decode([String: Any].self, forKey: .size)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemWeight: Double

        public var itemHeight: Double

        public var itemDimensionsUnitOfMeasure: String

        public var size: [String: Any]

        public var itemLength: Double

        public var identifiers: [ValidateIdentifier]?

        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemWidth: Double

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case itemHeight = "item_height"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case size

            case itemLength = "item_length"

            case identifiers

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWidth = "item_width"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemWeight = itemWeight

            self.itemHeight = itemHeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.size = size

            self.itemLength = itemLength

            self.identifiers = identifiers

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWidth = itemWidth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            size = try container.decode([String: Any].self, forKey: .size)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
        }
    }
}

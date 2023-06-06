

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: RerankingAttribute1
         Used By: Catalog
     */

    class RerankingAttribute1: Codable {
        public var attributeValue: String

        public var attributeKey: String

        public enum CodingKeys: String, CodingKey {
            case attributeValue = "attribute_value"

            case attributeKey = "attribute_key"
        }

        public init(attributeKey: String, attributeValue: String) {
            self.attributeValue = attributeValue

            self.attributeKey = attributeKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributeValue = try container.decode(String.self, forKey: .attributeValue)

            attributeKey = try container.decode(String.self, forKey: .attributeKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributeValue, forKey: .attributeValue)

            try? container.encodeIfPresent(attributeKey, forKey: .attributeKey)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: RerankingAttribute1
         Used By: Catalog
     */

    class RerankingAttribute1: Codable {
        public var attributeValue: String

        public var attributeKey: String

        public enum CodingKeys: String, CodingKey {
            case attributeValue = "attribute_value"

            case attributeKey = "attribute_key"
        }

        public init(attributeKey: String, attributeValue: String) {
            self.attributeValue = attributeValue

            self.attributeKey = attributeKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributeValue = try container.decode(String.self, forKey: .attributeValue)

            attributeKey = try container.decode(String.self, forKey: .attributeKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributeValue, forKey: .attributeValue)

            try? container.encodeIfPresent(attributeKey, forKey: .attributeKey)
        }
    }
}



import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: RerankingAttribute
         Used By: Catalog
     */

    class RerankingAttribute: Codable {
        public var attributeKey: String

        public var attributeValue: String

        public enum CodingKeys: String, CodingKey {
            case attributeKey = "attribute_key"

            case attributeValue = "attribute_value"
        }

        public init(attributeKey: String, attributeValue: String) {
            self.attributeKey = attributeKey

            self.attributeValue = attributeValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributeKey = try container.decode(String.self, forKey: .attributeKey)

            attributeValue = try container.decode(String.self, forKey: .attributeValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributeKey, forKey: .attributeKey)

            try? container.encodeIfPresent(attributeValue, forKey: .attributeValue)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: RerankingAttribute
         Used By: Catalog
     */

    class RerankingAttribute: Codable {
        public var attributeKey: String

        public var attributeValue: String

        public enum CodingKeys: String, CodingKey {
            case attributeKey = "attribute_key"

            case attributeValue = "attribute_value"
        }

        public init(attributeKey: String, attributeValue: String) {
            self.attributeKey = attributeKey

            self.attributeValue = attributeValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributeKey = try container.decode(String.self, forKey: .attributeKey)

            attributeValue = try container.decode(String.self, forKey: .attributeValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributeKey, forKey: .attributeKey)

            try? container.encodeIfPresent(attributeValue, forKey: .attributeValue)
        }
    }
}

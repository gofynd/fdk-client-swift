

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeSchemaOverride
         Used By: Catalog
     */

    class AttributeSchemaOverride: Codable {
        public var attribute: String

        public var schema: AttributeMaster

        public enum CodingKeys: String, CodingKey {
            case attribute

            case schema
        }

        public init(attribute: String, schema: AttributeMaster) {
            self.attribute = attribute

            self.schema = schema
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attribute = try container.decode(String.self, forKey: .attribute)

            schema = try container.decode(AttributeMaster.self, forKey: .schema)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attribute, forKey: .attribute)

            try? container.encodeIfPresent(schema, forKey: .schema)
        }
    }
}

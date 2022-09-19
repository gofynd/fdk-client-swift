

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeSchemaOverride
         Used By: Catalog
     */

    class AttributeSchemaOverride: Codable {
        public var schema: AttributeMaster

        public var attribute: String

        public enum CodingKeys: String, CodingKey {
            case schema

            case attribute
        }

        public init(attribute: String, schema: AttributeMaster) {
            self.schema = schema

            self.attribute = attribute
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            schema = try container.decode(AttributeMaster.self, forKey: .schema)

            attribute = try container.decode(String.self, forKey: .attribute)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schema, forKey: .schema)

            try? container.encodeIfPresent(attribute, forKey: .attribute)
        }
    }
}

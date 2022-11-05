

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionQuery
         Used By: Catalog
     */

    class CollectionQuery: Codable {
        public var value: [[String: Any]]

        public var attribute: String

        public var op: String

        public enum CodingKeys: String, CodingKey {
            case value

            case attribute

            case op
        }

        public init(attribute: String, op: String, value: [[String: Any]]) {
            self.value = value

            self.attribute = attribute

            self.op = op
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode([[String: Any]].self, forKey: .value)

            attribute = try container.decode(String.self, forKey: .attribute)

            op = try container.decode(String.self, forKey: .op)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(attribute, forKey: .attribute)

            try? container.encodeIfPresent(op, forKey: .op)
        }
    }
}

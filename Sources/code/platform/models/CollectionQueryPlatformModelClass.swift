

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionQuery
         Used By: Catalog
     */

    class CollectionQuery: Codable {
        public var value: [[String: Any]]

        public var op: String

        public var attribute: String

        public enum CodingKeys: String, CodingKey {
            case value

            case op

            case attribute
        }

        public init(attribute: String, op: String, value: [[String: Any]]) {
            self.value = value

            self.op = op

            self.attribute = attribute
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode([[String: Any]].self, forKey: .value)

            op = try container.decode(String.self, forKey: .op)

            attribute = try container.decode(String.self, forKey: .attribute)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(op, forKey: .op)

            try? container.encodeIfPresent(attribute, forKey: .attribute)
        }
    }
}

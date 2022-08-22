

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionQuery
         Used By: Catalog
     */

    class CollectionQuery: Codable {
        public var op: String

        public var attribute: String

        public var value: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case op

            case attribute

            case value
        }

        public init(attribute: String, op: String, value: [[String: Any]]) {
            self.op = op

            self.attribute = attribute

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            op = try container.decode(String.self, forKey: .op)

            attribute = try container.decode(String.self, forKey: .attribute)

            value = try container.decode([[String: Any]].self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(op, forKey: .op)

            try? container.encodeIfPresent(attribute, forKey: .attribute)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}

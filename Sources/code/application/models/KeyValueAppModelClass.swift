

import Foundation
public extension ApplicationClient {
    /*
         Model: KeyValue
         Used By: Lead
     */
    class KeyValue: Codable {
        public var key: String

        public var value: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case key

            case value
        }

        public init(key: String, value: [String: Any]) {
            self.key = key

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            value = try container.decode([String: Any].self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}

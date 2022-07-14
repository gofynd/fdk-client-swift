

import Foundation
public extension PlatformClient {
    /*
         Model: FilterDict
         Used By: Orders
     */

    class FilterDict: Codable {
        public var value: String

        public var text: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case value

            case text

            case name
        }

        public init(name: String, text: String, value: String) {
            self.value = value

            self.text = text

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            text = try container.decode(String.self, forKey: .text)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

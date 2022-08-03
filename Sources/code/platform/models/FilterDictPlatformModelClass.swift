

import Foundation
public extension PlatformClient {
    /*
         Model: FilterDict
         Used By: Orders
     */

    class FilterDict: Codable {
        public var text: String

        public var value: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case text

            case value

            case name
        }

        public init(name: String, text: String, value: String) {
            self.text = text

            self.value = value

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            value = try container.decode(String.self, forKey: .value)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

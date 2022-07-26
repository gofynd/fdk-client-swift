

import Foundation
public extension PlatformClient {
    /*
         Model: FilterDict
         Used By: Orders
     */

    class FilterDict: Codable {
        public var value: String

        public var name: String

        public var text: String

        public enum CodingKeys: String, CodingKey {
            case value

            case name

            case text
        }

        public init(name: String, text: String, value: String) {
            self.value = value

            self.name = name

            self.text = text
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            name = try container.decode(String.self, forKey: .name)

            text = try container.decode(String.self, forKey: .text)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }
}

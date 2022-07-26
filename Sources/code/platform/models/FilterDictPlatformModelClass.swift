

import Foundation
public extension PlatformClient {
    /*
         Model: FilterDict
         Used By: Orders
     */

    class FilterDict: Codable {
        public var name: String

        public var text: String

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case name

            case text

            case value
        }

        public init(name: String, text: String, value: String) {
            self.name = name

            self.text = text

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            text = try container.decode(String.self, forKey: .text)

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}

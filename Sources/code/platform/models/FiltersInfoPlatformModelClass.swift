

import Foundation
public extension PlatformClient {
    /*
         Model: FiltersInfo
         Used By: Orders
     */

    class FiltersInfo: Codable {
        public var options: [FilterInfoOption]?

        public var value: String

        public var type: String

        public var text: String

        public enum CodingKeys: String, CodingKey {
            case options

            case value

            case type

            case text
        }

        public init(options: [FilterInfoOption]? = nil, text: String, type: String, value: String) {
            self.options = options

            self.value = value

            self.type = type

            self.text = text
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                options = try container.decode([FilterInfoOption].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)

            text = try container.decode(String.self, forKey: .text)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }
}
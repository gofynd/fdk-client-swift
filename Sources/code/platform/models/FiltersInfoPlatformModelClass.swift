

import Foundation
public extension PlatformClient {
    /*
         Model: FiltersInfo
         Used By: Orders
     */

    class FiltersInfo: Codable {
        public var text: String

        public var value: String

        public var options: [FilterInfoOption]?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case text

            case value

            case options

            case type
        }

        public init(options: [FilterInfoOption]? = nil, text: String, type: String, value: String) {
            self.text = text

            self.value = value

            self.options = options

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            value = try container.decode(String.self, forKey: .value)

            do {
                options = try container.decode([FilterInfoOption].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

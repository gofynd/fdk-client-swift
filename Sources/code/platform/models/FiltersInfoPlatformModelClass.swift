

import Foundation
public extension PlatformClient {
    /*
         Model: FiltersInfo
         Used By: Orders
     */

    class FiltersInfo: Codable {
        public var text: String

        public var type: String

        public var value: String

        public var options: [FilterInfoOption]?

        public enum CodingKeys: String, CodingKey {
            case text

            case type

            case value

            case options
        }

        public init(options: [FilterInfoOption]? = nil, text: String, type: String, value: String) {
            self.text = text

            self.type = type

            self.value = value

            self.options = options
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            type = try container.decode(String.self, forKey: .type)

            value = try container.decode(String.self, forKey: .value)

            do {
                options = try container.decode([FilterInfoOption].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(options, forKey: .options)
        }
    }
}

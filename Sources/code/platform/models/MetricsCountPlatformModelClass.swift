

import Foundation
public extension PlatformClient {
    /*
         Model: MetricsCount
         Used By: Order
     */

    class MetricsCount: Codable {
        public var key: String

        public var options: [Options]?

        public var value: Int

        public var text: String

        public enum CodingKeys: String, CodingKey {
            case key

            case options

            case value

            case text
        }

        public init(key: String, options: [Options]? = nil, text: String, value: Int) {
            self.key = key

            self.options = options

            self.value = value

            self.text = text
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            do {
                options = try container.decode([Options].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Int.self, forKey: .value)

            text = try container.decode(String.self, forKey: .text)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }
}

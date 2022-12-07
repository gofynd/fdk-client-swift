

import Foundation
public extension PlatformClient {
    /*
         Model: MetricsCount
         Used By: Order
     */

    class MetricsCount: Codable {
        public var value: Int

        public var text: String

        public var key: String

        public var options: [Options1]?

        public enum CodingKeys: String, CodingKey {
            case value

            case text

            case key

            case options
        }

        public init(key: String, options: [Options1]? = nil, text: String, value: Int) {
            self.value = value

            self.text = text

            self.key = key

            self.options = options
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(Int.self, forKey: .value)

            text = try container.decode(String.self, forKey: .text)

            key = try container.decode(String.self, forKey: .key)

            do {
                options = try container.decode([Options1].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(options, forKey: .options)
        }
    }
}

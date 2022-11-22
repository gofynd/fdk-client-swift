

import Foundation
public extension PlatformClient {
    /*
         Model: SuperLane
         Used By: Order
     */

    class SuperLane: Codable {
        public var text: String

        public var value: String

        public var options: [SubLane]?

        public enum CodingKeys: String, CodingKey {
            case text

            case value

            case options
        }

        public init(options: [SubLane]? = nil, text: String, value: String) {
            self.text = text

            self.value = value

            self.options = options
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            value = try container.decode(String.self, forKey: .value)

            do {
                options = try container.decode([SubLane].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(options, forKey: .options)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: FilterOption
         Used By: Orders
     */

    class FilterOption: Codable {
        public var value: String?

        public var text: String

        public enum CodingKeys: String, CodingKey {
            case value

            case text
        }

        public init(text: String, value: String? = nil) {
            self.value = value

            self.text = text
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            text = try container.decode(String.self, forKey: .text)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }
}

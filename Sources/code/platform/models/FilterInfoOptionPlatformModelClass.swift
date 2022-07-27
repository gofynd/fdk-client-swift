

import Foundation
public extension PlatformClient {
    /*
         Model: FilterInfoOption
         Used By: Orders
     */

    class FilterInfoOption: Codable {
        public var text: String

        public var value: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case text

            case value

            case name
        }

        public init(name: String? = nil, text: String, value: String? = nil) {
            self.text = text

            self.value = value

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

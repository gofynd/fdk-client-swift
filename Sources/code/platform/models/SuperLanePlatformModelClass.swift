

import Foundation
public extension PlatformClient {
    /*
         Model: SuperLane
         Used By: Order
     */

    class SuperLane: Codable {
        public var options: [SubLane]?

        public var value: String

        public var text: String

        public var totalItems: Int?

        public enum CodingKeys: String, CodingKey {
            case options

            case value

            case text

            case totalItems = "total_items"
        }

        public init(options: [SubLane]? = nil, text: String, totalItems: Int? = nil, value: String) {
            self.options = options

            self.value = value

            self.text = text

            self.totalItems = totalItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                options = try container.decode([SubLane].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            text = try container.decode(String.self, forKey: .text)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
        }
    }
}

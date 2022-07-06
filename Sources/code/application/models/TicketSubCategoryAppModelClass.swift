

import Foundation
public extension ApplicationClient {
    /*
         Model: TicketSubCategory
         Used By: Lead
     */
    class TicketSubCategory: Codable {
        public var key: String

        public var display: String

        public enum CodingKeys: String, CodingKey {
            case key

            case display
        }

        public init(display: String, key: String) {
            self.key = key

            self.display = display
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            display = try container.decode(String.self, forKey: .display)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}

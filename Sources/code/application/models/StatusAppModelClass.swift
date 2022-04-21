

import Foundation
public extension ApplicationClient {
    /*
         Model: Status
         Used By: Lead
     */
    class Status: Codable {
        public var key: String

        public var display: String

        public var color: String

        public enum CodingKeys: String, CodingKey {
            case key

            case display

            case color
        }

        public init(color: String, display: String, key: String) {
            self.key = key

            self.display = display

            self.color = color
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            display = try container.decode(String.self, forKey: .display)

            color = try container.decode(String.self, forKey: .color)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(color, forKey: .color)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: JsonSchema
         Used By: Configuration
     */

    class JsonSchema: Codable {
        public var display: String?

        public var key: String?

        public var type: String?

        public var tooltip: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case key

            case type

            case tooltip
        }

        public init(display: String? = nil, key: String? = nil, tooltip: String? = nil, type: String? = nil) {
            self.display = display

            self.key = key

            self.type = type

            self.tooltip = tooltip
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tooltip = try container.decode(String.self, forKey: .tooltip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tooltip, forKey: .tooltip)
        }
    }
}

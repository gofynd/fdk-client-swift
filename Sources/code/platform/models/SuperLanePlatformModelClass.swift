

import Foundation
public extension PlatformClient {
    /*
         Model: SuperLane
         Used By: Orders
     */

    class SuperLane: Codable {
        public var options: [SubLane]?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case options

            case displayName = "display_name"
        }

        public init(displayName: String, options: [SubLane]? = nil) {
            self.options = options

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                options = try container.decode([SubLane].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}

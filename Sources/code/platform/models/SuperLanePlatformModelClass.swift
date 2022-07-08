

import Foundation
public extension PlatformClient {
    /*
         Model: SuperLane
         Used By: Orders
     */

    class SuperLane: Codable {
        public var displayName: String

        public var options: [SubLane]?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case options
        }

        public init(displayName: String, options: [SubLane]? = nil) {
            self.displayName = displayName

            self.options = options
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                options = try container.decode([SubLane].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(options, forKey: .options)
        }
    }
}

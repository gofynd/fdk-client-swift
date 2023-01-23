

import Foundation
public extension ApplicationClient {
    /*
         Model: Locations
         Used By: Common
     */
    class Locations: Codable {
        public var items: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [[String: Any]]? = nil) {
            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

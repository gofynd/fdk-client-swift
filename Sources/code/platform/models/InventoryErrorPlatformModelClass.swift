

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryError
         Used By: Catalog
     */

    class InventoryError: Codable {
        public var error: String?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case error

            case key
        }

        public init(error: String? = nil, key: String? = nil) {
            self.error = error

            self.key = key
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode(String.self, forKey: .error)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: InventoryFailedReason
         Used By: Catalog
     */

    class InventoryFailedReason: Codable {
        public var errors: [String: Any]?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case errors

            case message
        }

        public init(errors: [String: Any]? = nil, message: String) {
            self.errors = errors

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

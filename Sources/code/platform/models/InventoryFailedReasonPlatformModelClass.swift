

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryFailedReason
         Used By: Catalog
     */

    class InventoryFailedReason: Codable {
        public var message: String

        public var errors: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case errors
        }

        public init(errors: String? = nil, message: String) {
            self.message = message

            self.errors = errors
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                errors = try container.decode(String.self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(errors, forKey: .errors)
        }
    }
}

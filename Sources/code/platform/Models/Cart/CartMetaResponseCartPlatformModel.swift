

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartMetaResponse
         Used By: Cart
     */

    class CartMetaResponse: Codable {
        public var isValid: Bool?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case isValid = "is_valid"

            case message
        }

        public init(isValid: Bool? = nil, message: String? = nil) {
            self.isValid = isValid

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

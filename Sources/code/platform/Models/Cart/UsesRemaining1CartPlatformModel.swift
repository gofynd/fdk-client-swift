

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: UsesRemaining1
         Used By: Cart
     */

    class UsesRemaining1: Codable {
        public var total: Int?

        public var user: Int?

        public enum CodingKeys: String, CodingKey {
            case total

            case user
        }

        public init(total: Int? = nil, user: Int? = nil) {
            self.total = total

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(Int.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}



import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: UsesRemainingSchema
         Used By: Cart
     */

    class UsesRemainingSchema: Codable {
        public var app: Int?

        public var user: Int?

        public var total: Int?

        public enum CodingKeys: String, CodingKey {
            case app

            case user

            case total
        }

        public init(app: Int? = nil, total: Int? = nil, user: Int? = nil) {
            self.app = app

            self.user = user

            self.total = total
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                app = try container.decode(Int.self, forKey: .app)

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

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(total, forKey: .total)
        }
    }
}

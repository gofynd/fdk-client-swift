

import Foundation
public extension PlatformClient {
    /*
         Model: EInvoicePortalDetails
         Used By: Orders
     */

    class EInvoicePortalDetails: Codable {
        public var user: String?

        public var username: String?

        public var password: String?

        public enum CodingKeys: String, CodingKey {
            case user

            case username

            case password
        }

        public init(password: String? = nil, user: String? = nil, username: String? = nil) {
            self.user = user

            self.username = username

            self.password = password
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(password, forKey: .password)
        }
    }
}

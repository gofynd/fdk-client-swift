

import Foundation
public extension PlatformClient {
    /*
         Model: UserInfo
         Used By: Catalog
     */

    class UserInfo: Codable {
        public var userId: String?

        public var username: String?

        public var uid: String?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case username

            case uid

            case email
        }

        public init(email: String? = nil, uid: String? = nil, username: String? = nil, userId: String? = nil) {
            self.userId = userId

            self.username = username

            self.uid = uid

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

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
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}

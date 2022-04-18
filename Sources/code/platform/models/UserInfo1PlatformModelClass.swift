import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UserInfo1
         Used By: Catalog
     */

    class UserInfo1: Codable {
        public var userId: String?

        public var email: String?

        public var username: String?

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case email

            case username

            case uid
        }

        public init(email: String?, uid: String?, username: String?, userId: String?) {
            self.userId = userId

            self.email = email

            self.username = username

            self.uid = uid
        }

        public func duplicate() -> UserInfo1 {
            let dict = self.dictionary!
            let copy = UserInfo1(dictionary: dict)!
            return copy
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
                email = try container.decode(String.self, forKey: .email)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}

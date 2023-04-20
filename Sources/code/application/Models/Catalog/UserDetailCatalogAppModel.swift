

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: UserDetail
         Used By: Catalog
     */
    class UserDetail: Codable {
        public var username: String

        public var userId: String

        public var contact: String?

        public var superUser: Bool?

        public enum CodingKeys: String, CodingKey {
            case username

            case userId = "user_id"

            case contact

            case superUser = "super_user"
        }

        public init(contact: String? = nil, superUser: Bool? = nil, username: String, userId: String) {
            self.username = username

            self.userId = userId

            self.contact = contact

            self.superUser = superUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            username = try container.decode(String.self, forKey: .username)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                superUser = try container.decode(Bool.self, forKey: .superUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(superUser, forKey: .superUser)
        }
    }
}

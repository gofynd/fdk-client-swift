

import Foundation
public extension PlatformClient {
    /*
         Model: UserSerializer
         Used By: Catalog
     */

    class UserSerializer: Codable {
        public var id: String?

        public var username: String?

        public var userId: String?

        public var uid: String?

        public var contact: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case username

            case userId = "user_id"

            case uid

            case contact
        }

        public init(contact: String? = nil, uid: String? = nil, username: String? = nil, userId: String? = nil, id: String? = nil) {
            self.id = id

            self.username = username

            self.userId = userId

            self.uid = uid

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

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
                userId = try container.decode(String.self, forKey: .userId)

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
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }
}

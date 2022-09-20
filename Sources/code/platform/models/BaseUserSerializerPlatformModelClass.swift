

import Foundation
public extension PlatformClient {
    /*
         Model: BaseUserSerializer
         Used By: Catalog
     */

    class BaseUserSerializer: Codable {
        public var username: String?

        public var contact: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case username

            case contact

            case userId = "user_id"
        }

        public init(contact: String? = nil, username: String? = nil, userId: String? = nil) {
            self.username = username

            self.contact = contact

            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                username = try container.decode(String.self, forKey: .username)

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

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: UserDetail1
         Used By: Catalog
     */

    class UserDetail1: Codable {
        public var userId: String?

        public var username: String?

        public var fullName: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case username

            case fullName = "full_name"
        }

        public init(fullName: String? = nil, username: String? = nil, userId: String? = nil) {
            self.userId = userId

            self.username = username

            self.fullName = fullName
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
                fullName = try container.decode(String.self, forKey: .fullName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(fullName, forKey: .fullName)
        }
    }
}

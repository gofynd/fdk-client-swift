

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetail1
         Used By: Catalog
     */

    class UserDetail1: Codable {
        public var fullName: String?

        public var username: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case fullName = "full_name"

            case username

            case userId = "user_id"
        }

        public init(fullName: String? = nil, username: String? = nil, userId: String? = nil) {
            self.fullName = fullName

            self.username = username

            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fullName = try container.decode(String.self, forKey: .fullName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fullName, forKey: .fullName)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}
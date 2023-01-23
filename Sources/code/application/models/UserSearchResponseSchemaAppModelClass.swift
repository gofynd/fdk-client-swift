

import Foundation
public extension ApplicationClient {
    /*
         Model: UserSearchResponseSchema
         Used By: User
     */
    class UserSearchResponseSchema: Codable {
        public var users: [UserSchema]?

        public enum CodingKeys: String, CodingKey {
            case users
        }

        public init(users: [UserSchema]? = nil) {
            self.users = users
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                users = try container.decode([UserSchema].self, forKey: .users)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)
        }
    }
}

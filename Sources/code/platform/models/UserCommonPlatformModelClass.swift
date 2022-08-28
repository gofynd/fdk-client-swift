

import Foundation
public extension PlatformClient {
    /*
         Model: UserCommon
         Used By: Catalog
     */

    class UserCommon: Codable {
        public var userId: String?

        public var companyId: Int?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case companyId = "company_id"

            case username
        }

        public init(companyId: Int? = nil, username: String? = nil, userId: String? = nil) {
            self.userId = userId

            self.companyId = companyId

            self.username = username
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
                companyId = try container.decode(Int.self, forKey: .companyId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }
}

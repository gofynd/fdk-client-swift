

import Foundation
public extension PlatformClient {
    /*
         Model: UserCommon
         Used By: Catalog
     */

    class UserCommon: Codable {
        public var username: String?

        public var userId: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case username

            case userId = "user_id"

            case companyId = "company_id"
        }

        public init(companyId: Int? = nil, username: String? = nil, userId: String? = nil) {
            self.username = username

            self.userId = userId

            self.companyId = companyId
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UserCommon
         Used By: Catalog
     */

    class UserCommon: Codable {
        public var username: String?

        public var companyId: Int?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case username

            case companyId = "company_id"

            case userId = "user_id"
        }

        public init(companyId: Int?, username: String?, userId: String?) {
            self.username = username

            self.companyId = companyId

            self.userId = userId
        }

        public func duplicate() -> UserCommon {
            let dict = self.dictionary!
            let copy = UserCommon(dictionary: dict)!
            return copy
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
                companyId = try container.decode(Int.self, forKey: .companyId)

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

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}

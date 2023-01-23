

import Foundation
public extension PlatformClient {
    /*
         Model: RewardsAudience
         Used By: Rewards
     */

    class RewardsAudience: Codable {
        public var headerUserId: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case headerUserId = "header_user_id"

            case id
        }

        public init(headerUserId: String? = nil, id: String? = nil) {
            self.headerUserId = headerUserId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                headerUserId = try container.decode(String.self, forKey: .headerUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(headerUserId, forKey: .headerUserId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

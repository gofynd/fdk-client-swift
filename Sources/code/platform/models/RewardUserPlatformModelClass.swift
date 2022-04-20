

import Foundation
public extension PlatformClient {
    /*
         Model: RewardUser
         Used By: Rewards
     */

    class RewardUser: Codable {
        public var id: String?

        public var active: Bool?

        public var createdAt: String?

        public var referral: Referral?

        public var uid: Int?

        public var updatedAt: String?

        public var userBlockReason: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case active

            case createdAt = "created_at"

            case referral

            case uid

            case updatedAt = "updated_at"

            case userBlockReason = "user_block_reason"

            case userId = "user_id"
        }

        public init(active: Bool? = nil, createdAt: String? = nil, referral: Referral? = nil, uid: Int? = nil, updatedAt: String? = nil, userBlockReason: String? = nil, userId: String? = nil, id: String? = nil) {
            self.id = id

            self.active = active

            self.createdAt = createdAt

            self.referral = referral

            self.uid = uid

            self.updatedAt = updatedAt

            self.userBlockReason = userBlockReason

            self.userId = userId
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
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                referral = try container.decode(Referral.self, forKey: .referral)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userBlockReason = try container.decode(String.self, forKey: .userBlockReason)

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

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(referral, forKey: .referral)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(userBlockReason, forKey: .userBlockReason)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}

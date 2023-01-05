

import Foundation
public extension PlatformClient {
    /*
         Model: AppUser
         Used By: Rewards
     */

    class AppUser: Codable {
        public var id: String?

        public var active: Bool?

        public var applicationId: String?

        public var blockReason: String?

        public var updatedAt: String?

        public var updatedBy: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case active

            case applicationId = "application_id"

            case blockReason = "block_reason"

            case updatedAt = "updated_at"

            case updatedBy = "updated_by"

            case userId = "user_id"
        }

        public init(active: Bool? = nil, applicationId: String? = nil, blockReason: String? = nil, updatedAt: String? = nil, updatedBy: String? = nil, userId: String? = nil, id: String? = nil) {
            self.id = id

            self.active = active

            self.applicationId = applicationId

            self.blockReason = blockReason

            self.updatedAt = updatedAt

            self.updatedBy = updatedBy

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
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                blockReason = try container.decode(String.self, forKey: .blockReason)

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
                updatedBy = try container.decode(String.self, forKey: .updatedBy)

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

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(blockReason, forKey: .blockReason)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}



import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: ThemeRejectionReasons
         Used By: Theme
     */
    class ThemeRejectionReasons: Codable {
        public var id: String

        public var message: String?

        public var themeId: String

        public var organizationId: String

        public var adminId: String

        public var userId: String

        public var status: String

        public var rejectionReasons: [String: Any]

        public var createdAt: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case message

            case themeId = "theme_id"

            case organizationId = "organization_id"

            case adminId = "admin_id"

            case userId = "user_id"

            case status

            case rejectionReasons = "rejection_reasons"

            case createdAt = "created_at"

            case updatedAt = "updated_at"
        }

        public init(adminId: String, createdAt: String? = nil, message: String? = nil, organizationId: String, rejectionReasons: [String: Any], status: String, themeId: String, updatedAt: String? = nil, userId: String, id: String) {
            self.id = id

            self.message = message

            self.themeId = themeId

            self.organizationId = organizationId

            self.adminId = adminId

            self.userId = userId

            self.status = status

            self.rejectionReasons = rejectionReasons

            self.createdAt = createdAt

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            themeId = try container.decode(String.self, forKey: .themeId)

            organizationId = try container.decode(String.self, forKey: .organizationId)

            adminId = try container.decode(String.self, forKey: .adminId)

            userId = try container.decode(String.self, forKey: .userId)

            status = try container.decode(String.self, forKey: .status)

            rejectionReasons = try container.decode([String: Any].self, forKey: .rejectionReasons)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(themeId, forKey: .themeId)

            try? container.encodeIfPresent(organizationId, forKey: .organizationId)

            try? container.encodeIfPresent(adminId, forKey: .adminId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(rejectionReasons, forKey: .rejectionReasons)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}

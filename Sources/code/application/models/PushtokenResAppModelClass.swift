

import Foundation
public extension ApplicationClient {
    /*
         Model: PushtokenRes
         Used By: Communication
     */
    class PushtokenRes: Codable {
        public var id: String?

        public var bundleIdentifier: String?

        public var pushToken: String?

        public var uniqueDeviceId: String?

        public var type: String?

        public var platform: String?

        public var applicationId: String?

        public var userId: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var expiredAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case bundleIdentifier = "bundle_identifier"

            case pushToken = "push_token"

            case uniqueDeviceId = "unique_device_id"

            case type

            case platform

            case applicationId = "application_id"

            case userId = "user_id"

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case expiredAt = "expired_at"
        }

        public init(applicationId: String? = nil, bundleIdentifier: String? = nil, createdAt: String? = nil, expiredAt: String? = nil, platform: String? = nil, pushToken: String? = nil, type: String? = nil, uniqueDeviceId: String? = nil, updatedAt: String? = nil, userId: String? = nil, id: String? = nil) {
            self.id = id

            self.bundleIdentifier = bundleIdentifier

            self.pushToken = pushToken

            self.uniqueDeviceId = uniqueDeviceId

            self.type = type

            self.platform = platform

            self.applicationId = applicationId

            self.userId = userId

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.expiredAt = expiredAt
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
                bundleIdentifier = try container.decode(String.self, forKey: .bundleIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pushToken = try container.decode(String.self, forKey: .pushToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uniqueDeviceId = try container.decode(String.self, forKey: .uniqueDeviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode(String.self, forKey: .platform)

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
                userId = try container.decode(String.self, forKey: .userId)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiredAt = try container.decode(String.self, forKey: .expiredAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bundleIdentifier, forKey: .bundleIdentifier)

            try? container.encodeIfPresent(pushToken, forKey: .pushToken)

            try? container.encodeIfPresent(uniqueDeviceId, forKey: .uniqueDeviceId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(expiredAt, forKey: .expiredAt)
        }
    }
}

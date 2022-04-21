

import Foundation
public extension PlatformClient {
    /*
         Model: SystemNotification
         Used By: Communication
     */

    class SystemNotification: Codable {
        public var notification: Notification?

        public var user: SystemNotificationUser?

        public var settings: SystemNotificationUser?

        public var id: String?

        public var group: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case notification

            case user

            case settings

            case id = "_id"

            case group

            case createdAt = "created_at"
        }

        public init(createdAt: String? = nil, group: String? = nil, notification: Notification? = nil, settings: SystemNotificationUser? = nil, user: SystemNotificationUser? = nil, id: String? = nil) {
            self.notification = notification

            self.user = user

            self.settings = settings

            self.id = id

            self.group = group

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                notification = try container.decode(Notification.self, forKey: .notification)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(SystemNotificationUser.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                settings = try container.decode(SystemNotificationUser.self, forKey: .settings)

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

            do {
                group = try container.decode(String.self, forKey: .group)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notification, forKey: .notification)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(settings, forKey: .settings)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(group, forKey: .group)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}

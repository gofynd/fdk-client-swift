

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryPartialExportRequest
         Used By: Catalog
     */

    class InventoryPartialExportRequest: Codable {
        public var status: String?

        public var notificationEmails: [String]?

        public enum CodingKeys: String, CodingKey {
            case status

            case notificationEmails = "notification_emails"
        }

        public init(notificationEmails: [String]? = nil, status: String? = nil) {
            self.status = status

            self.notificationEmails = notificationEmails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryPartialExportRequest
         Used By: Catalog
     */

    class InventoryPartialExportRequest: Codable {
        public var status: String?

        public var notificationEmails: [String]?

        public enum CodingKeys: String, CodingKey {
            case status

            case notificationEmails = "notification_emails"
        }

        public init(notificationEmails: [String]? = nil, status: String? = nil) {
            self.status = status

            self.notificationEmails = notificationEmails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
        }
    }
}

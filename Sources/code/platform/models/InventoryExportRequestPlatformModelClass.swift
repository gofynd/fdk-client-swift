

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportRequest
         Used By: Catalog
     */

    class InventoryExportRequest: Codable {
        public var filters: InventoryExportFilter

        public var type: String?

        public var notificationEmails: [String]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case type

            case notificationEmails = "notification_emails"
        }

        public init(filters: InventoryExportFilter, notificationEmails: [String]? = nil, type: String? = nil) {
            self.filters = filters

            self.type = type

            self.notificationEmails = notificationEmails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filters = try container.decode(InventoryExportFilter.self, forKey: .filters)

            do {
                type = try container.decode(String.self, forKey: .type)

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

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
        }
    }
}

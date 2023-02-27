

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportRequest
         Used By: Catalog
     */

    class InventoryExportRequest: Codable {
        public var data: [String]?

        public var filters: InventoryExportFilter

        public var notificationEmails: [String]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case filters

            case notificationEmails = "notification_emails"

            case type
        }

        public init(data: [String]? = nil, filters: InventoryExportFilter, notificationEmails: [String]? = nil, type: String? = nil) {
            self.data = data

            self.filters = filters

            self.notificationEmails = notificationEmails

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([String].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            filters = try container.decode(InventoryExportFilter.self, forKey: .filters)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encode(type, forKey: .type)
        }
    }
}

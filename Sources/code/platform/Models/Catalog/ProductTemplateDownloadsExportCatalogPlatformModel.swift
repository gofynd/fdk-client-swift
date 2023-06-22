

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductTemplateDownloadsExport
         Used By: Catalog
     */

    class ProductTemplateDownloadsExport: Codable {
        public var type: String?

        public var filters: ProductTemplateExportFilterRequest?

        public var notificationEmails: [String]?

        public enum CodingKeys: String, CodingKey {
            case type

            case filters

            case notificationEmails = "notification_emails"
        }

        public init(filters: ProductTemplateExportFilterRequest? = nil, notificationEmails: [String]? = nil, type: String? = nil) {
            self.type = type

            self.filters = filters

            self.notificationEmails = notificationEmails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(ProductTemplateExportFilterRequest.self, forKey: .filters)

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

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductTemplateDownloadsExport
         Used By: Catalog
     */

    class ProductTemplateDownloadsExport: Codable {
        public var type: String?

        public var filters: ProductTemplateExportFilterRequest?

        public var notificationEmails: [String]?

        public enum CodingKeys: String, CodingKey {
            case type

            case filters

            case notificationEmails = "notification_emails"
        }

        public init(filters: ProductTemplateExportFilterRequest? = nil, notificationEmails: [String]? = nil, type: String? = nil) {
            self.type = type

            self.filters = filters

            self.notificationEmails = notificationEmails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(ProductTemplateExportFilterRequest.self, forKey: .filters)

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

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
        }
    }
}

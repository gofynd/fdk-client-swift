

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var completedOn: String?

        public var url: String?

        public var notificationEmails: [String]?

        public var sellerId: Int

        public var filters: InventoryExportAdvanceOption?

        public var status: String?

        public var type: String

        public var taskId: String

        public enum CodingKeys: String, CodingKey {
            case completedOn = "completed_on"

            case url

            case notificationEmails = "notification_emails"

            case sellerId = "seller_id"

            case filters

            case status

            case type

            case taskId = "task_id"
        }

        public init(completedOn: String? = nil, filters: InventoryExportAdvanceOption? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: String? = nil, taskId: String, type: String, url: String? = nil) {
            self.completedOn = completedOn

            self.url = url

            self.notificationEmails = notificationEmails

            self.sellerId = sellerId

            self.filters = filters

            self.status = status

            self.type = type

            self.taskId = taskId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

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

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                filters = try container.decode(InventoryExportAdvanceOption.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            taskId = try container.decode(String.self, forKey: .taskId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(taskId, forKey: .taskId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var completedOn: String?

        public var url: String?

        public var notificationEmails: [String]?

        public var sellerId: Int

        public var filters: InventoryExportAdvanceOption?

        public var status: String?

        public var type: String

        public var taskId: String

        public enum CodingKeys: String, CodingKey {
            case completedOn = "completed_on"

            case url

            case notificationEmails = "notification_emails"

            case sellerId = "seller_id"

            case filters

            case status

            case type

            case taskId = "task_id"
        }

        public init(completedOn: String? = nil, filters: InventoryExportAdvanceOption? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: String? = nil, taskId: String, type: String, url: String? = nil) {
            self.completedOn = completedOn

            self.url = url

            self.notificationEmails = notificationEmails

            self.sellerId = sellerId

            self.filters = filters

            self.status = status

            self.type = type

            self.taskId = taskId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

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

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                filters = try container.decode(InventoryExportAdvanceOption.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            taskId = try container.decode(String.self, forKey: .taskId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(taskId, forKey: .taskId)
        }
    }
}

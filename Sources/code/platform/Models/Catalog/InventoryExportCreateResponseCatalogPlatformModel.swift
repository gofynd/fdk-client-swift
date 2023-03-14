

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryExportCreateResponse
         Used By: Catalog
     */

    class InventoryExportCreateResponse: Codable {
        public var filters: InventoryExportCreateFilters

        public var type: String?

        public var taskId: String

        public var url: String

        public var id: String

        public var status: [String: Any]?

        public var modifiedOn: String?

        public var cancelledBy: UserDetail?

        public var createdOn: String?

        public var sellerId: Int

        public var createdBy: UserDetail?

        public var cancelledOn: String?

        public var completedOn: String?

        public var notificationEmails: [String]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case type

            case taskId = "task_id"

            case url

            case id

            case status

            case modifiedOn = "modified_on"

            case cancelledBy = "cancelled_by"

            case createdOn = "created_on"

            case sellerId = "seller_id"

            case createdBy = "created_by"

            case cancelledOn = "cancelled_on"

            case completedOn = "completed_on"

            case notificationEmails = "notification_emails"
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryExportCreateFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: [String: Any]? = nil, taskId: String, type: String? = nil, url: String) {
            self.filters = filters

            self.type = type

            self.taskId = taskId

            self.url = url

            self.id = id

            self.status = status

            self.modifiedOn = modifiedOn

            self.cancelledBy = cancelledBy

            self.createdOn = createdOn

            self.sellerId = sellerId

            self.createdBy = createdBy

            self.cancelledOn = cancelledOn

            self.completedOn = completedOn

            self.notificationEmails = notificationEmails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filters = try container.decode(InventoryExportCreateFilters.self, forKey: .filters)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taskId = try container.decode(String.self, forKey: .taskId)

            url = try container.decode(String.self, forKey: .url)

            id = try container.decode(String.self, forKey: .id)

            do {
                status = try container.decode([String: Any].self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

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

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryExportCreateResponse
         Used By: Catalog
     */

    class InventoryExportCreateResponse: Codable {
        public var filters: InventoryExportCreateFilters

        public var type: String?

        public var taskId: String

        public var url: String

        public var id: String

        public var status: [String: Any]?

        public var modifiedOn: String?

        public var cancelledBy: UserDetail?

        public var createdOn: String?

        public var sellerId: Int

        public var createdBy: UserDetail?

        public var cancelledOn: String?

        public var completedOn: String?

        public var notificationEmails: [String]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case type

            case taskId = "task_id"

            case url

            case id

            case status

            case modifiedOn = "modified_on"

            case cancelledBy = "cancelled_by"

            case createdOn = "created_on"

            case sellerId = "seller_id"

            case createdBy = "created_by"

            case cancelledOn = "cancelled_on"

            case completedOn = "completed_on"

            case notificationEmails = "notification_emails"
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryExportCreateFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: [String: Any]? = nil, taskId: String, type: String? = nil, url: String) {
            self.filters = filters

            self.type = type

            self.taskId = taskId

            self.url = url

            self.id = id

            self.status = status

            self.modifiedOn = modifiedOn

            self.cancelledBy = cancelledBy

            self.createdOn = createdOn

            self.sellerId = sellerId

            self.createdBy = createdBy

            self.cancelledOn = cancelledOn

            self.completedOn = completedOn

            self.notificationEmails = notificationEmails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filters = try container.decode(InventoryExportCreateFilters.self, forKey: .filters)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taskId = try container.decode(String.self, forKey: .taskId)

            url = try container.decode(String.self, forKey: .url)

            id = try container.decode(String.self, forKey: .id)

            do {
                status = try container.decode([String: Any].self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

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

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
        }
    }
}

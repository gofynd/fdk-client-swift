

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryJobDetailResponse
         Used By: Catalog
     */

    class InventoryJobDetailResponse: Codable {
        public var id: String

        public var createdBy: UserDetail?

        public var url: String

        public var cancelledBy: UserDetail?

        public var filters: InventoryJobFilters

        public var createdOn: String?

        public var completedOn: String?

        public var notificationEmails: [String]?

        public var sellerId: Int

        public var modifiedOn: String?

        public var taskId: String

        public var cancelledOn: String?

        public var type: String?

        public var status: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id

            case createdBy = "created_by"

            case url

            case cancelledBy = "cancelled_by"

            case filters

            case createdOn = "created_on"

            case completedOn = "completed_on"

            case notificationEmails = "notification_emails"

            case sellerId = "seller_id"

            case modifiedOn = "modified_on"

            case taskId = "task_id"

            case cancelledOn = "cancelled_on"

            case type

            case status
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryJobFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: [String: Any]? = nil, taskId: String, type: String? = nil, url: String) {
            self.id = id

            self.createdBy = createdBy

            self.url = url

            self.cancelledBy = cancelledBy

            self.filters = filters

            self.createdOn = createdOn

            self.completedOn = completedOn

            self.notificationEmails = notificationEmails

            self.sellerId = sellerId

            self.modifiedOn = modifiedOn

            self.taskId = taskId

            self.cancelledOn = cancelledOn

            self.type = type

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            filters = try container.decode(InventoryJobFilters.self, forKey: .filters)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

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
                status = try container.decode([String: Any].self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryJobDetailResponse
         Used By: Catalog
     */

    class InventoryJobDetailResponse: Codable {
        public var id: String

        public var createdBy: UserDetail?

        public var url: String

        public var cancelledBy: UserDetail?

        public var filters: InventoryJobFilters

        public var createdOn: String?

        public var completedOn: String?

        public var notificationEmails: [String]?

        public var sellerId: Int

        public var modifiedOn: String?

        public var taskId: String

        public var cancelledOn: String?

        public var type: String?

        public var status: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id

            case createdBy = "created_by"

            case url

            case cancelledBy = "cancelled_by"

            case filters

            case createdOn = "created_on"

            case completedOn = "completed_on"

            case notificationEmails = "notification_emails"

            case sellerId = "seller_id"

            case modifiedOn = "modified_on"

            case taskId = "task_id"

            case cancelledOn = "cancelled_on"

            case type

            case status
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryJobFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: [String: Any]? = nil, taskId: String, type: String? = nil, url: String) {
            self.id = id

            self.createdBy = createdBy

            self.url = url

            self.cancelledBy = cancelledBy

            self.filters = filters

            self.createdOn = createdOn

            self.completedOn = completedOn

            self.notificationEmails = notificationEmails

            self.sellerId = sellerId

            self.modifiedOn = modifiedOn

            self.taskId = taskId

            self.cancelledOn = cancelledOn

            self.type = type

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            filters = try container.decode(InventoryJobFilters.self, forKey: .filters)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

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
                status = try container.decode([String: Any].self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

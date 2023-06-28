

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryJobDetailResponse
         Used By: Catalog
     */

    class InventoryJobDetailResponse: Codable {
        public var filters: InventoryJobFilters

        public var status: String?

        public var sellerId: Int

        public var url: String

        public var taskId: String

        public var createdOn: String?

        public var completedOn: String?

        public var type: String?

        public var id: String

        public var cancelledOn: String?

        public var createdBy: UserDetail?

        public var notificationEmails: [String]?

        public var cancelledBy: UserDetail?

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case filters

            case status

            case sellerId = "seller_id"

            case url

            case taskId = "task_id"

            case createdOn = "created_on"

            case completedOn = "completed_on"

            case type

            case id

            case cancelledOn = "cancelled_on"

            case createdBy = "created_by"

            case notificationEmails = "notification_emails"

            case cancelledBy = "cancelled_by"

            case modifiedOn = "modified_on"
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryJobFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: String? = nil, taskId: String, type: String? = nil, url: String) {
            self.filters = filters

            self.status = status

            self.sellerId = sellerId

            self.url = url

            self.taskId = taskId

            self.createdOn = createdOn

            self.completedOn = completedOn

            self.type = type

            self.id = id

            self.cancelledOn = cancelledOn

            self.createdBy = createdBy

            self.notificationEmails = notificationEmails

            self.cancelledBy = cancelledBy

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filters = try container.decode(InventoryJobFilters.self, forKey: .filters)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            url = try container.decode(String.self, forKey: .url)

            taskId = try container.decode(String.self, forKey: .taskId)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

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

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryJobDetailResponse
         Used By: Catalog
     */

    class InventoryJobDetailResponse: Codable {
        public var filters: InventoryJobFilters

        public var status: String?

        public var sellerId: Int

        public var url: String

        public var taskId: String

        public var createdOn: String?

        public var completedOn: String?

        public var type: String?

        public var id: String

        public var cancelledOn: String?

        public var createdBy: UserDetail?

        public var notificationEmails: [String]?

        public var cancelledBy: UserDetail?

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case filters

            case status

            case sellerId = "seller_id"

            case url

            case taskId = "task_id"

            case createdOn = "created_on"

            case completedOn = "completed_on"

            case type

            case id

            case cancelledOn = "cancelled_on"

            case createdBy = "created_by"

            case notificationEmails = "notification_emails"

            case cancelledBy = "cancelled_by"

            case modifiedOn = "modified_on"
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryJobFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: String? = nil, taskId: String, type: String? = nil, url: String) {
            self.filters = filters

            self.status = status

            self.sellerId = sellerId

            self.url = url

            self.taskId = taskId

            self.createdOn = createdOn

            self.completedOn = completedOn

            self.type = type

            self.id = id

            self.cancelledOn = cancelledOn

            self.createdBy = createdBy

            self.notificationEmails = notificationEmails

            self.cancelledBy = cancelledBy

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filters = try container.decode(InventoryJobFilters.self, forKey: .filters)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            url = try container.decode(String.self, forKey: .url)

            taskId = try container.decode(String.self, forKey: .taskId)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

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

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}



import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Items
         Used By: Catalog
     */

    class Items: Codable {
        public var succeed: Int?

        public var cancelled: Int?

        public var stage: String?

        public var trackingUrl: String?

        public var failedRecords: [String]?

        public var createdOn: String?

        public var modifiedBy: UserCommon?

        public var isActive: Bool?

        public var filePath: String?

        public var cancelledRecords: [String]?

        public var failed: Int?

        public var retry: Int?

        public var total: Int?

        public var companyId: Int?

        public var id: String?

        public var modifiedOn: String?

        public var createdBy: UserCommon?

        public enum CodingKeys: String, CodingKey {
            case succeed

            case cancelled

            case stage

            case trackingUrl = "tracking_url"

            case failedRecords = "failed_records"

            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case isActive = "is_active"

            case filePath = "file_path"

            case cancelledRecords = "cancelled_records"

            case failed

            case retry

            case total

            case companyId = "company_id"

            case id

            case modifiedOn = "modified_on"

            case createdBy = "created_by"
        }

        public init(cancelled: Int? = nil, cancelledRecords: [String]? = nil, companyId: Int? = nil, createdBy: UserCommon? = nil, createdOn: String? = nil, failed: Int? = nil, failedRecords: [String]? = nil, filePath: String? = nil, id: String? = nil, isActive: Bool? = nil, modifiedBy: UserCommon? = nil, modifiedOn: String? = nil, retry: Int? = nil, stage: String? = nil, succeed: Int? = nil, total: Int? = nil, trackingUrl: String? = nil) {
            self.succeed = succeed

            self.cancelled = cancelled

            self.stage = stage

            self.trackingUrl = trackingUrl

            self.failedRecords = failedRecords

            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.isActive = isActive

            self.filePath = filePath

            self.cancelledRecords = cancelledRecords

            self.failed = failed

            self.retry = retry

            self.total = total

            self.companyId = companyId

            self.id = id

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelled = try container.decode(Int.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

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

            do {
                modifiedBy = try container.decode(UserCommon.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledRecords = try container.decode([String].self, forKey: .cancelledRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failed = try container.decode(Int.self, forKey: .failed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                retry = try container.decode(Int.self, forKey: .retry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserCommon.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Items
         Used By: Catalog
     */

    class Items: Codable {
        public var succeed: Int?

        public var cancelled: Int?

        public var stage: String?

        public var trackingUrl: String?

        public var failedRecords: [String]?

        public var createdOn: String?

        public var modifiedBy: UserCommon?

        public var isActive: Bool?

        public var filePath: String?

        public var cancelledRecords: [String]?

        public var failed: Int?

        public var retry: Int?

        public var total: Int?

        public var companyId: Int?

        public var id: String?

        public var modifiedOn: String?

        public var createdBy: UserCommon?

        public enum CodingKeys: String, CodingKey {
            case succeed

            case cancelled

            case stage

            case trackingUrl = "tracking_url"

            case failedRecords = "failed_records"

            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case isActive = "is_active"

            case filePath = "file_path"

            case cancelledRecords = "cancelled_records"

            case failed

            case retry

            case total

            case companyId = "company_id"

            case id

            case modifiedOn = "modified_on"

            case createdBy = "created_by"
        }

        public init(cancelled: Int? = nil, cancelledRecords: [String]? = nil, companyId: Int? = nil, createdBy: UserCommon? = nil, createdOn: String? = nil, failed: Int? = nil, failedRecords: [String]? = nil, filePath: String? = nil, id: String? = nil, isActive: Bool? = nil, modifiedBy: UserCommon? = nil, modifiedOn: String? = nil, retry: Int? = nil, stage: String? = nil, succeed: Int? = nil, total: Int? = nil, trackingUrl: String? = nil) {
            self.succeed = succeed

            self.cancelled = cancelled

            self.stage = stage

            self.trackingUrl = trackingUrl

            self.failedRecords = failedRecords

            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.isActive = isActive

            self.filePath = filePath

            self.cancelledRecords = cancelledRecords

            self.failed = failed

            self.retry = retry

            self.total = total

            self.companyId = companyId

            self.id = id

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelled = try container.decode(Int.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

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

            do {
                modifiedBy = try container.decode(UserCommon.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledRecords = try container.decode([String].self, forKey: .cancelledRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failed = try container.decode(Int.self, forKey: .failed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                retry = try container.decode(Int.self, forKey: .retry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserCommon.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }
}

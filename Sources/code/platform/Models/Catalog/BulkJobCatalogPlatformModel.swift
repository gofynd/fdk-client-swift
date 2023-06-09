

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: BulkJob
         Used By: Catalog
     */

    class BulkJob: Codable {
        public var modifiedOn: String?

        public var cancelledRecords: [[String: Any]]?

        public var trackingUrl: String?

        public var isActive: Bool?

        public var succeed: Int?

        public var failed: Int?

        public var companyId: Int

        public var stage: String?

        public var modifiedBy: UserInfo1?

        public var total: Int?

        public var customTemplateTag: String?

        public var createdBy: UserInfo1?

        public var filePath: String?

        public var failedRecords: [[String: Any]]?

        public var createdOn: String

        public var templateTag: String?

        public var cancelled: Int?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case cancelledRecords = "cancelled_records"

            case trackingUrl = "tracking_url"

            case isActive = "is_active"

            case succeed

            case failed

            case companyId = "company_id"

            case stage

            case modifiedBy = "modified_by"

            case total

            case customTemplateTag = "custom_template_tag"

            case createdBy = "created_by"

            case filePath = "file_path"

            case failedRecords = "failed_records"

            case createdOn = "created_on"

            case templateTag = "template_tag"

            case cancelled
        }

        public init(cancelled: Int? = nil, cancelledRecords: [[String: Any]]? = nil, companyId: Int, createdBy: UserInfo1? = nil, createdOn: String, customTemplateTag: String? = nil, failed: Int? = nil, failedRecords: [[String: Any]]? = nil, filePath: String? = nil, isActive: Bool? = nil, modifiedBy: UserInfo1? = nil, modifiedOn: String? = nil, stage: String? = nil, succeed: Int? = nil, templateTag: String? = nil, total: Int? = nil, trackingUrl: String? = nil) {
            self.modifiedOn = modifiedOn

            self.cancelledRecords = cancelledRecords

            self.trackingUrl = trackingUrl

            self.isActive = isActive

            self.succeed = succeed

            self.failed = failed

            self.companyId = companyId

            self.stage = stage

            self.modifiedBy = modifiedBy

            self.total = total

            self.customTemplateTag = customTemplateTag

            self.createdBy = createdBy

            self.filePath = filePath

            self.failedRecords = failedRecords

            self.createdOn = createdOn

            self.templateTag = templateTag

            self.cancelled = cancelled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledRecords = try container.decode([[String: Any]].self, forKey: .cancelledRecords)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

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
                customTemplateTag = try container.decode(String.self, forKey: .customTemplateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

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
                failedRecords = try container.decode([[String: Any]].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(customTemplateTag, forKey: .customTemplateTag)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: BulkJob
         Used By: Catalog
     */

    class BulkJob: Codable {
        public var modifiedOn: String?

        public var cancelledRecords: [[String: Any]]?

        public var trackingUrl: String?

        public var isActive: Bool?

        public var succeed: Int?

        public var failed: Int?

        public var companyId: Int

        public var stage: String?

        public var modifiedBy: UserInfo1?

        public var total: Int?

        public var customTemplateTag: String?

        public var createdBy: UserInfo1?

        public var filePath: String?

        public var failedRecords: [[String: Any]]?

        public var createdOn: String

        public var templateTag: String?

        public var cancelled: Int?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case cancelledRecords = "cancelled_records"

            case trackingUrl = "tracking_url"

            case isActive = "is_active"

            case succeed

            case failed

            case companyId = "company_id"

            case stage

            case modifiedBy = "modified_by"

            case total

            case customTemplateTag = "custom_template_tag"

            case createdBy = "created_by"

            case filePath = "file_path"

            case failedRecords = "failed_records"

            case createdOn = "created_on"

            case templateTag = "template_tag"

            case cancelled
        }

        public init(cancelled: Int? = nil, cancelledRecords: [[String: Any]]? = nil, companyId: Int, createdBy: UserInfo1? = nil, createdOn: String, customTemplateTag: String? = nil, failed: Int? = nil, failedRecords: [[String: Any]]? = nil, filePath: String? = nil, isActive: Bool? = nil, modifiedBy: UserInfo1? = nil, modifiedOn: String? = nil, stage: String? = nil, succeed: Int? = nil, templateTag: String? = nil, total: Int? = nil, trackingUrl: String? = nil) {
            self.modifiedOn = modifiedOn

            self.cancelledRecords = cancelledRecords

            self.trackingUrl = trackingUrl

            self.isActive = isActive

            self.succeed = succeed

            self.failed = failed

            self.companyId = companyId

            self.stage = stage

            self.modifiedBy = modifiedBy

            self.total = total

            self.customTemplateTag = customTemplateTag

            self.createdBy = createdBy

            self.filePath = filePath

            self.failedRecords = failedRecords

            self.createdOn = createdOn

            self.templateTag = templateTag

            self.cancelled = cancelled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledRecords = try container.decode([[String: Any]].self, forKey: .cancelledRecords)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

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
                customTemplateTag = try container.decode(String.self, forKey: .customTemplateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

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
                failedRecords = try container.decode([[String: Any]].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(customTemplateTag, forKey: .customTemplateTag)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)
        }
    }
}

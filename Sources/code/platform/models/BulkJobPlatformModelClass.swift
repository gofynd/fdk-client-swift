

import Foundation
public extension PlatformClient {
    /*
         Model: BulkJob
         Used By: Catalog
     */

    class BulkJob: Codable {
        public var cancelledRecords: [[String: Any]]?

        public var templateTag: String?

        public var failed: Int?

        public var modifiedOn: String?

        public var createdOn: String

        public var trackingUrl: String?

        public var customTemplateTag: String?

        public var isActive: Bool?

        public var modifiedBy: UserInfo1?

        public var companyId: Int

        public var stage: String?

        public var filePath: String?

        public var createdBy: UserInfo1?

        public var succeed: Int?

        public var cancelled: Int?

        public var total: Int

        public var failedRecords: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case cancelledRecords = "cancelled_records"

            case templateTag = "template_tag"

            case failed

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case trackingUrl = "tracking_url"

            case customTemplateTag = "custom_template_tag"

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case companyId = "company_id"

            case stage

            case filePath = "file_path"

            case createdBy = "created_by"

            case succeed

            case cancelled

            case total

            case failedRecords = "failed_records"
        }

        public init(cancelled: Int? = nil, cancelledRecords: [[String: Any]]? = nil, companyId: Int, createdBy: UserInfo1? = nil, createdOn: String, customTemplateTag: String? = nil, failed: Int? = nil, failedRecords: [[String: Any]]? = nil, filePath: String? = nil, isActive: Bool? = nil, modifiedBy: UserInfo1? = nil, modifiedOn: String? = nil, stage: String? = nil, succeed: Int? = nil, templateTag: String? = nil, total: Int, trackingUrl: String? = nil) {
            self.cancelledRecords = cancelledRecords

            self.templateTag = templateTag

            self.failed = failed

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.trackingUrl = trackingUrl

            self.customTemplateTag = customTemplateTag

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.companyId = companyId

            self.stage = stage

            self.filePath = filePath

            self.createdBy = createdBy

            self.succeed = succeed

            self.cancelled = cancelled

            self.total = total

            self.failedRecords = failedRecords
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cancelledRecords = try container.decode([[String: Any]].self, forKey: .cancelledRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

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
                cancelled = try container.decode(Int.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            total = try container.decode(Int.self, forKey: .total)

            do {
                failedRecords = try container.decode([[String: Any]].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(customTemplateTag, forKey: .customTemplateTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
        }
    }
}

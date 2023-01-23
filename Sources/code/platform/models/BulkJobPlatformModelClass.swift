

import Foundation
public extension PlatformClient {
    /*
         Model: BulkJob
         Used By: Catalog
     */

    class BulkJob: Codable {
        public var modifiedBy: UserInfo1?

        public var cancelled: Int?

        public var createdBy: UserInfo1?

        public var modifiedOn: String?

        public var productType: String?

        public var failed: Int?

        public var companyId: Int

        public var filePath: String?

        public var failedRecords: [[String: Any]]?

        public var total: Int

        public var succeed: Int?

        public var templateTag: String?

        public var trackingUrl: String?

        public var cancelledRecords: [[String: Any]]?

        public var createdOn: String

        public var stage: String?

        public var customTemplateTag: String?

        public var isActive: Bool?

        public var department: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case cancelled

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case productType = "product_type"

            case failed

            case companyId = "company_id"

            case filePath = "file_path"

            case failedRecords = "failed_records"

            case total

            case succeed

            case templateTag = "template_tag"

            case trackingUrl = "tracking_url"

            case cancelledRecords = "cancelled_records"

            case createdOn = "created_on"

            case stage

            case customTemplateTag = "custom_template_tag"

            case isActive = "is_active"

            case department
        }

        public init(cancelled: Int? = nil, cancelledRecords: [[String: Any]]? = nil, companyId: Int, createdBy: UserInfo1? = nil, createdOn: String, customTemplateTag: String? = nil, department: String? = nil, failed: Int? = nil, failedRecords: [[String: Any]]? = nil, filePath: String? = nil, isActive: Bool? = nil, modifiedBy: UserInfo1? = nil, modifiedOn: String? = nil, productType: String? = nil, stage: String? = nil, succeed: Int? = nil, templateTag: String? = nil, total: Int, trackingUrl: String? = nil) {
            self.modifiedBy = modifiedBy

            self.cancelled = cancelled

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.productType = productType

            self.failed = failed

            self.companyId = companyId

            self.filePath = filePath

            self.failedRecords = failedRecords

            self.total = total

            self.succeed = succeed

            self.templateTag = templateTag

            self.trackingUrl = trackingUrl

            self.cancelledRecords = cancelledRecords

            self.createdOn = createdOn

            self.stage = stage

            self.customTemplateTag = customTemplateTag

            self.isActive = isActive

            self.department = department
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

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
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

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
                productType = try container.decode(String.self, forKey: .productType)

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

            total = try container.decode(Int.self, forKey: .total)

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

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
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

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

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                department = try container.decode(String.self, forKey: .department)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(productType, forKey: .productType)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(customTemplateTag, forKey: .customTemplateTag)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(department, forKey: .department)
        }
    }
}

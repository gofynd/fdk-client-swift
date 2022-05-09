

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBulkRequest
         Used By: Catalog
     */

    class ProductBulkRequest: Codable {
        public var templateTag: String?

        public var filePath: String?

        public var isActive: Bool?

        public var createdBy: UserDetail?

        public var modifiedOn: String?

        public var template: ProductTemplate?

        public var succeed: Int?

        public var failedRecords: [String]?

        public var companyId: Int?

        public var failed: Int?

        public var total: Int?

        public var cancelledRecords: [String]?

        public var modifiedBy: UserDetail?

        public var cancelled: Int?

        public var createdOn: String?

        public var stage: String?

        public enum CodingKeys: String, CodingKey {
            case templateTag = "template_tag"

            case filePath = "file_path"

            case isActive = "is_active"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case template

            case succeed

            case failedRecords = "failed_records"

            case companyId = "company_id"

            case failed

            case total

            case cancelledRecords = "cancelled_records"

            case modifiedBy = "modified_by"

            case cancelled

            case createdOn = "created_on"

            case stage
        }

        public init(cancelled: Int? = nil, cancelledRecords: [String]? = nil, companyId: Int? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, failed: Int? = nil, failedRecords: [String]? = nil, filePath: String? = nil, isActive: Bool? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String? = nil, stage: String? = nil, succeed: Int? = nil, template: ProductTemplate? = nil, templateTag: String? = nil, total: Int? = nil) {
            self.templateTag = templateTag

            self.filePath = filePath

            self.isActive = isActive

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.template = template

            self.succeed = succeed

            self.failedRecords = failedRecords

            self.companyId = companyId

            self.failed = failed

            self.total = total

            self.cancelledRecords = cancelledRecords

            self.modifiedBy = modifiedBy

            self.cancelled = cancelled

            self.createdOn = createdOn

            self.stage = stage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                template = try container.decode(ProductTemplate.self, forKey: .template)

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
                failedRecords = try container.decode([String].self, forKey: .failedRecords)

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
                failed = try container.decode(Int.self, forKey: .failed)

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
                cancelledRecords = try container.decode([String].self, forKey: .cancelledRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(template, forKey: .template)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(stage, forKey: .stage)
        }
    }
}

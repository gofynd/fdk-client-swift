import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBulkRequest
         Used By: Catalog
     */

    class ProductBulkRequest: Codable {
        public var modifiedBy: UserDetail?

        public var createdBy: UserDetail?

        public var filePath: String?

        public var modifiedOn: String?

        public var cancelledRecords: [String]?

        public var isActive: Bool?

        public var failed: Int?

        public var templateTag: String?

        public var succeed: Int?

        public var cancelled: Int?

        public var createdOn: String?

        public var stage: String?

        public var template: ProductTemplate?

        public var failedRecords: [String]?

        public var total: Int?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case filePath = "file_path"

            case modifiedOn = "modified_on"

            case cancelledRecords = "cancelled_records"

            case isActive = "is_active"

            case failed

            case templateTag = "template_tag"

            case succeed

            case cancelled

            case createdOn = "created_on"

            case stage

            case template

            case failedRecords = "failed_records"

            case total

            case companyId = "company_id"
        }

        public init(cancelled: Int?, cancelledRecords: [String]?, companyId: Int?, createdBy: UserDetail?, createdOn: String?, failed: Int?, failedRecords: [String]?, filePath: String?, isActive: Bool?, modifiedBy: UserDetail?, modifiedOn: String?, stage: String?, succeed: Int?, template: ProductTemplate?, templateTag: String?, total: Int?) {
            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.filePath = filePath

            self.modifiedOn = modifiedOn

            self.cancelledRecords = cancelledRecords

            self.isActive = isActive

            self.failed = failed

            self.templateTag = templateTag

            self.succeed = succeed

            self.cancelled = cancelled

            self.createdOn = createdOn

            self.stage = stage

            self.template = template

            self.failedRecords = failedRecords

            self.total = total

            self.companyId = companyId
        }

        public func duplicate() -> ProductBulkRequest {
            let dict = self.dictionary!
            let copy = ProductBulkRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

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
                filePath = try container.decode(String.self, forKey: .filePath)

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
                cancelledRecords = try container.decode([String].self, forKey: .cancelledRecords)

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
                failed = try container.decode(Int.self, forKey: .failed)

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

            do {
                template = try container.decode(ProductTemplate.self, forKey: .template)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(template, forKey: .template)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: BulkInventoryGetItems
         Used By: Catalog
     */

    class BulkInventoryGetItems: Codable {
        public var cancelled: Int?

        public var succeed: Int?

        public var createdOn: String?

        public var failedRecords: [String]?

        public var failed: Int?

        public var filePath: String?

        public var id: String?

        public var modifiedOn: String?

        public var companyId: Int?

        public var modifiedBy: [String: Any]?

        public var total: Int?

        public var isActive: Bool?

        public var cancelledRecords: [String]?

        public var createdBy: [String: Any]?

        public var stage: String?

        public enum CodingKeys: String, CodingKey {
            case cancelled

            case succeed

            case createdOn = "created_on"

            case failedRecords = "failed_records"

            case failed

            case filePath = "file_path"

            case id

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case modifiedBy = "modified_by"

            case total

            case isActive = "is_active"

            case cancelledRecords = "cancelled_records"

            case createdBy = "created_by"

            case stage
        }

        public init(cancelled: Int? = nil, cancelledRecords: [String]? = nil, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, failed: Int? = nil, failedRecords: [String]? = nil, filePath: String? = nil, id: String? = nil, isActive: Bool? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, stage: String? = nil, succeed: Int? = nil, total: Int? = nil) {
            self.cancelled = cancelled

            self.succeed = succeed

            self.createdOn = createdOn

            self.failedRecords = failedRecords

            self.failed = failed

            self.filePath = filePath

            self.id = id

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.modifiedBy = modifiedBy

            self.total = total

            self.isActive = isActive

            self.cancelledRecords = cancelledRecords

            self.createdBy = createdBy

            self.stage = stage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cancelled = try container.decode(Int.self, forKey: .cancelled)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                failed = try container.decode(Int.self, forKey: .failed)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(stage, forKey: .stage)
        }
    }
}



import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: PincodeMopUpdateAuditHistoryResponse
         Used By: Serviceability
     */

    class PincodeMopUpdateAuditHistoryResponse: Codable {
        public var batchId: String?

        public var entityType: String?

        public var errorFileS3Url: String?

        public var s3Url: String?

        public var fileName: String?

        public var updatedAt: String?

        public var updatedBy: String?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case entityType = "entity_type"

            case errorFileS3Url = "error_file_s3_url"

            case s3Url = "s3_url"

            case fileName = "file_name"

            case updatedAt = "updated_at"

            case updatedBy = "updated_by"

            case success
        }

        public init(batchId: String? = nil, entityType: String? = nil, errorFileS3Url: String? = nil, fileName: String? = nil, s3Url: String? = nil, success: Bool? = nil, updatedAt: String? = nil, updatedBy: String? = nil) {
            self.batchId = batchId

            self.entityType = entityType

            self.errorFileS3Url = errorFileS3Url

            self.s3Url = s3Url

            self.fileName = fileName

            self.updatedAt = updatedAt

            self.updatedBy = updatedBy

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                batchId = try container.decode(String.self, forKey: .batchId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorFileS3Url = try container.decode(String.self, forKey: .errorFileS3Url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                s3Url = try container.decode(String.self, forKey: .s3Url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileName = try container.decode(String.self, forKey: .fileName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedBy = try container.decode(String.self, forKey: .updatedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(errorFileS3Url, forKey: .errorFileS3Url)

            try? container.encodeIfPresent(s3Url, forKey: .s3Url)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: PincodeMopUpdateAuditHistoryResponse
         Used By: Serviceability
     */

    class PincodeMopUpdateAuditHistoryResponse: Codable {
        public var batchId: String?

        public var entityType: String?

        public var errorFileS3Url: String?

        public var s3Url: String?

        public var fileName: String?

        public var updatedAt: String?

        public var updatedBy: String?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case entityType = "entity_type"

            case errorFileS3Url = "error_file_s3_url"

            case s3Url = "s3_url"

            case fileName = "file_name"

            case updatedAt = "updated_at"

            case updatedBy = "updated_by"

            case success
        }

        public init(batchId: String? = nil, entityType: String? = nil, errorFileS3Url: String? = nil, fileName: String? = nil, s3Url: String? = nil, success: Bool? = nil, updatedAt: String? = nil, updatedBy: String? = nil) {
            self.batchId = batchId

            self.entityType = entityType

            self.errorFileS3Url = errorFileS3Url

            self.s3Url = s3Url

            self.fileName = fileName

            self.updatedAt = updatedAt

            self.updatedBy = updatedBy

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                batchId = try container.decode(String.self, forKey: .batchId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorFileS3Url = try container.decode(String.self, forKey: .errorFileS3Url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                s3Url = try container.decode(String.self, forKey: .s3Url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileName = try container.decode(String.self, forKey: .fileName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedBy = try container.decode(String.self, forKey: .updatedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(errorFileS3Url, forKey: .errorFileS3Url)

            try? container.encodeIfPresent(s3Url, forKey: .s3Url)

            try? container.encodeIfPresent(fileName, forKey: .fileName)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

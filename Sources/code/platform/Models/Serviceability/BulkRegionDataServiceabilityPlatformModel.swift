

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var filePath: String

        public var batchId: String

        public var error: BulkRecordError?

        public var action: String

        public var failedCount: Int

        public var successCount: Int

        public var failedRec: [CSVFileRecord]?

        public var stage: String

        public var totalRec: Int

        public var createdOn: String?

        public enum CodingKeys: String, CodingKey {
            case filePath = "file_path"

            case batchId = "batch_id"

            case error

            case action

            case failedCount = "failed_count"

            case successCount = "success_count"

            case failedRec = "failed_rec"

            case stage

            case totalRec = "total_rec"

            case createdOn = "created_on"
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.filePath = filePath

            self.batchId = batchId

            self.error = error

            self.action = action

            self.failedCount = failedCount

            self.successCount = successCount

            self.failedRec = failedRec

            self.stage = stage

            self.totalRec = totalRec

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filePath = try container.decode(String.self, forKey: .filePath)

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                error = try container.decode(BulkRecordError.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            failedCount = try container.decode(Int.self, forKey: .failedCount)

            successCount = try container.decode(Int.self, forKey: .successCount)

            do {
                failedRec = try container.decode([CSVFileRecord].self, forKey: .failedRec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stage = try container.decode(String.self, forKey: .stage)

            totalRec = try container.decode(Int.self, forKey: .totalRec)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)

            try? container.encodeIfPresent(successCount, forKey: .successCount)

            try? container.encode(failedRec, forKey: .failedRec)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var filePath: String

        public var batchId: String

        public var error: BulkRecordError?

        public var action: String

        public var failedCount: Int

        public var successCount: Int

        public var failedRec: [CSVFileRecord]?

        public var stage: String

        public var totalRec: Int

        public var createdOn: String?

        public enum CodingKeys: String, CodingKey {
            case filePath = "file_path"

            case batchId = "batch_id"

            case error

            case action

            case failedCount = "failed_count"

            case successCount = "success_count"

            case failedRec = "failed_rec"

            case stage

            case totalRec = "total_rec"

            case createdOn = "created_on"
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.filePath = filePath

            self.batchId = batchId

            self.error = error

            self.action = action

            self.failedCount = failedCount

            self.successCount = successCount

            self.failedRec = failedRec

            self.stage = stage

            self.totalRec = totalRec

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filePath = try container.decode(String.self, forKey: .filePath)

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                error = try container.decode(BulkRecordError.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            failedCount = try container.decode(Int.self, forKey: .failedCount)

            successCount = try container.decode(Int.self, forKey: .successCount)

            do {
                failedRec = try container.decode([CSVFileRecord].self, forKey: .failedRec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stage = try container.decode(String.self, forKey: .stage)

            totalRec = try container.decode(Int.self, forKey: .totalRec)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)

            try? container.encodeIfPresent(successCount, forKey: .successCount)

            try? container.encode(failedRec, forKey: .failedRec)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

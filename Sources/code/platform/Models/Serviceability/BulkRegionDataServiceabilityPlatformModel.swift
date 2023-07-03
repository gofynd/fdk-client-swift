

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var successCount: Int

        public var totalRec: Int

        public var createdOn: String?

        public var failedCount: Int

        public var stage: String

        public var filePath: String

        public var failedRec: [CSVFileRecord]?

        public var batchId: String

        public var error: BulkRecordError?

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case successCount = "success_count"

            case totalRec = "total_rec"

            case createdOn = "created_on"

            case failedCount = "failed_count"

            case stage

            case filePath = "file_path"

            case failedRec = "failed_rec"

            case batchId = "batch_id"

            case error

            case action
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.successCount = successCount

            self.totalRec = totalRec

            self.createdOn = createdOn

            self.failedCount = failedCount

            self.stage = stage

            self.filePath = filePath

            self.failedRec = failedRec

            self.batchId = batchId

            self.error = error

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            successCount = try container.decode(Int.self, forKey: .successCount)

            totalRec = try container.decode(Int.self, forKey: .totalRec)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            failedCount = try container.decode(Int.self, forKey: .failedCount)

            stage = try container.decode(String.self, forKey: .stage)

            filePath = try container.decode(String.self, forKey: .filePath)

            do {
                failedRec = try container.decode([CSVFileRecord].self, forKey: .failedRec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                error = try container.decode(BulkRecordError.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(successCount, forKey: .successCount)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encode(failedRec, forKey: .failedRec)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var successCount: Int

        public var totalRec: Int

        public var createdOn: String?

        public var failedCount: Int

        public var stage: String

        public var filePath: String

        public var failedRec: [CSVFileRecord]?

        public var batchId: String

        public var error: BulkRecordError?

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case successCount = "success_count"

            case totalRec = "total_rec"

            case createdOn = "created_on"

            case failedCount = "failed_count"

            case stage

            case filePath = "file_path"

            case failedRec = "failed_rec"

            case batchId = "batch_id"

            case error

            case action
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.successCount = successCount

            self.totalRec = totalRec

            self.createdOn = createdOn

            self.failedCount = failedCount

            self.stage = stage

            self.filePath = filePath

            self.failedRec = failedRec

            self.batchId = batchId

            self.error = error

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            successCount = try container.decode(Int.self, forKey: .successCount)

            totalRec = try container.decode(Int.self, forKey: .totalRec)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            failedCount = try container.decode(Int.self, forKey: .failedCount)

            stage = try container.decode(String.self, forKey: .stage)

            filePath = try container.decode(String.self, forKey: .filePath)

            do {
                failedRec = try container.decode([CSVFileRecord].self, forKey: .failedRec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                error = try container.decode(BulkRecordError.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(successCount, forKey: .successCount)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encode(failedRec, forKey: .failedRec)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}



import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var createdOn: String?

        public var failedRec: [CSVFileRecord]?

        public var stage: String

        public var action: String

        public var failedCount: Int

        public var filePath: String

        public var batchId: String

        public var totalRec: Int

        public var error: BulkRecordError?

        public var successCount: Int

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case failedRec = "failed_rec"

            case stage

            case action

            case failedCount = "failed_count"

            case filePath = "file_path"

            case batchId = "batch_id"

            case totalRec = "total_rec"

            case error

            case successCount = "success_count"
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.createdOn = createdOn

            self.failedRec = failedRec

            self.stage = stage

            self.action = action

            self.failedCount = failedCount

            self.filePath = filePath

            self.batchId = batchId

            self.totalRec = totalRec

            self.error = error

            self.successCount = successCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRec = try container.decode([CSVFileRecord].self, forKey: .failedRec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stage = try container.decode(String.self, forKey: .stage)

            action = try container.decode(String.self, forKey: .action)

            failedCount = try container.decode(Int.self, forKey: .failedCount)

            filePath = try container.decode(String.self, forKey: .filePath)

            batchId = try container.decode(String.self, forKey: .batchId)

            totalRec = try container.decode(Int.self, forKey: .totalRec)

            do {
                error = try container.decode(BulkRecordError.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            successCount = try container.decode(Int.self, forKey: .successCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(failedRec, forKey: .failedRec)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(successCount, forKey: .successCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var createdOn: String?

        public var failedRec: [CSVFileRecord]?

        public var stage: String

        public var action: String

        public var failedCount: Int

        public var filePath: String

        public var batchId: String

        public var totalRec: Int

        public var error: BulkRecordError?

        public var successCount: Int

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case failedRec = "failed_rec"

            case stage

            case action

            case failedCount = "failed_count"

            case filePath = "file_path"

            case batchId = "batch_id"

            case totalRec = "total_rec"

            case error

            case successCount = "success_count"
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.createdOn = createdOn

            self.failedRec = failedRec

            self.stage = stage

            self.action = action

            self.failedCount = failedCount

            self.filePath = filePath

            self.batchId = batchId

            self.totalRec = totalRec

            self.error = error

            self.successCount = successCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRec = try container.decode([CSVFileRecord].self, forKey: .failedRec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stage = try container.decode(String.self, forKey: .stage)

            action = try container.decode(String.self, forKey: .action)

            failedCount = try container.decode(Int.self, forKey: .failedCount)

            filePath = try container.decode(String.self, forKey: .filePath)

            batchId = try container.decode(String.self, forKey: .batchId)

            totalRec = try container.decode(Int.self, forKey: .totalRec)

            do {
                error = try container.decode(BulkRecordError.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            successCount = try container.decode(Int.self, forKey: .successCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(failedRec, forKey: .failedRec)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(successCount, forKey: .successCount)
        }
    }
}

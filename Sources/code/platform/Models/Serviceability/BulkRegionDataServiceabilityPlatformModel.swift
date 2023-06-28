

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var filePath: String

        public var totalRec: Int

        public var action: String

        public var failedRec: [CSVFileRecord]?

        public var successCount: Int

        public var stage: String

        public var error: BulkRecordError?

        public var createdOn: String?

        public var batchId: String

        public var failedCount: Int

        public enum CodingKeys: String, CodingKey {
            case filePath = "file_path"

            case totalRec = "total_rec"

            case action

            case failedRec = "failed_rec"

            case successCount = "success_count"

            case stage

            case error

            case createdOn = "created_on"

            case batchId = "batch_id"

            case failedCount = "failed_count"
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.filePath = filePath

            self.totalRec = totalRec

            self.action = action

            self.failedRec = failedRec

            self.successCount = successCount

            self.stage = stage

            self.error = error

            self.createdOn = createdOn

            self.batchId = batchId

            self.failedCount = failedCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filePath = try container.decode(String.self, forKey: .filePath)

            totalRec = try container.decode(Int.self, forKey: .totalRec)

            action = try container.decode(String.self, forKey: .action)

            do {
                failedRec = try container.decode([CSVFileRecord].self, forKey: .failedRec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            successCount = try container.decode(Int.self, forKey: .successCount)

            stage = try container.decode(String.self, forKey: .stage)

            do {
                error = try container.decode(BulkRecordError.self, forKey: .error)

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

            batchId = try container.decode(String.self, forKey: .batchId)

            failedCount = try container.decode(Int.self, forKey: .failedCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(failedRec, forKey: .failedRec)

            try? container.encodeIfPresent(successCount, forKey: .successCount)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)
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

        public var totalRec: Int

        public var action: String

        public var failedRec: [CSVFileRecord]?

        public var successCount: Int

        public var stage: String

        public var error: BulkRecordError?

        public var createdOn: String?

        public var batchId: String

        public var failedCount: Int

        public enum CodingKeys: String, CodingKey {
            case filePath = "file_path"

            case totalRec = "total_rec"

            case action

            case failedRec = "failed_rec"

            case successCount = "success_count"

            case stage

            case error

            case createdOn = "created_on"

            case batchId = "batch_id"

            case failedCount = "failed_count"
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.filePath = filePath

            self.totalRec = totalRec

            self.action = action

            self.failedRec = failedRec

            self.successCount = successCount

            self.stage = stage

            self.error = error

            self.createdOn = createdOn

            self.batchId = batchId

            self.failedCount = failedCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            filePath = try container.decode(String.self, forKey: .filePath)

            totalRec = try container.decode(Int.self, forKey: .totalRec)

            action = try container.decode(String.self, forKey: .action)

            do {
                failedRec = try container.decode([CSVFileRecord].self, forKey: .failedRec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            successCount = try container.decode(Int.self, forKey: .successCount)

            stage = try container.decode(String.self, forKey: .stage)

            do {
                error = try container.decode(BulkRecordError.self, forKey: .error)

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

            batchId = try container.decode(String.self, forKey: .batchId)

            failedCount = try container.decode(Int.self, forKey: .failedCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encode(failedRec, forKey: .failedRec)

            try? container.encodeIfPresent(successCount, forKey: .successCount)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)
        }
    }
}

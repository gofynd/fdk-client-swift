

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var batchId: String

        public var action: String

        public var failedCount: Int

        public var createdOn: String?

        public var failedRec: [CSVFileRecord]?

        public var totalRec: Int

        public var stage: String

        public var filePath: String

        public var successCount: Int

        public var error: BulkRecordError?

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case action

            case failedCount = "failed_count"

            case createdOn = "created_on"

            case failedRec = "failed_rec"

            case totalRec = "total_rec"

            case stage

            case filePath = "file_path"

            case successCount = "success_count"

            case error
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.batchId = batchId

            self.action = action

            self.failedCount = failedCount

            self.createdOn = createdOn

            self.failedRec = failedRec

            self.totalRec = totalRec

            self.stage = stage

            self.filePath = filePath

            self.successCount = successCount

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            action = try container.decode(String.self, forKey: .action)

            failedCount = try container.decode(Int.self, forKey: .failedCount)

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

            totalRec = try container.decode(Int.self, forKey: .totalRec)

            stage = try container.decode(String.self, forKey: .stage)

            filePath = try container.decode(String.self, forKey: .filePath)

            successCount = try container.decode(Int.self, forKey: .successCount)

            do {
                error = try container.decode(BulkRecordError.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(failedRec, forKey: .failedRec)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(successCount, forKey: .successCount)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var batchId: String

        public var action: String

        public var failedCount: Int

        public var createdOn: String?

        public var failedRec: [CSVFileRecord]?

        public var totalRec: Int

        public var stage: String

        public var filePath: String

        public var successCount: Int

        public var error: BulkRecordError?

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case action

            case failedCount = "failed_count"

            case createdOn = "created_on"

            case failedRec = "failed_rec"

            case totalRec = "total_rec"

            case stage

            case filePath = "file_path"

            case successCount = "success_count"

            case error
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.batchId = batchId

            self.action = action

            self.failedCount = failedCount

            self.createdOn = createdOn

            self.failedRec = failedRec

            self.totalRec = totalRec

            self.stage = stage

            self.filePath = filePath

            self.successCount = successCount

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            action = try container.decode(String.self, forKey: .action)

            failedCount = try container.decode(Int.self, forKey: .failedCount)

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

            totalRec = try container.decode(Int.self, forKey: .totalRec)

            stage = try container.decode(String.self, forKey: .stage)

            filePath = try container.decode(String.self, forKey: .filePath)

            successCount = try container.decode(Int.self, forKey: .successCount)

            do {
                error = try container.decode(BulkRecordError.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(failedRec, forKey: .failedRec)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(successCount, forKey: .successCount)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}

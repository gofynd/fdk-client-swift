

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var stage: String

        public var action: String

        public var failedCount: Int

        public var totalRec: Int

        public var error: BulkRecordError?

        public var createdOn: String?

        public var batchId: String

        public var successCount: Int

        public var filePath: String

        public var failedRec: [CSVFileRecord]?

        public enum CodingKeys: String, CodingKey {
            case stage

            case action

            case failedCount = "failed_count"

            case totalRec = "total_rec"

            case error

            case createdOn = "created_on"

            case batchId = "batch_id"

            case successCount = "success_count"

            case filePath = "file_path"

            case failedRec = "failed_rec"
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.stage = stage

            self.action = action

            self.failedCount = failedCount

            self.totalRec = totalRec

            self.error = error

            self.createdOn = createdOn

            self.batchId = batchId

            self.successCount = successCount

            self.filePath = filePath

            self.failedRec = failedRec
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stage = try container.decode(String.self, forKey: .stage)

            action = try container.decode(String.self, forKey: .action)

            failedCount = try container.decode(Int.self, forKey: .failedCount)

            totalRec = try container.decode(Int.self, forKey: .totalRec)

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

            successCount = try container.decode(Int.self, forKey: .successCount)

            filePath = try container.decode(String.self, forKey: .filePath)

            do {
                failedRec = try container.decode([CSVFileRecord].self, forKey: .failedRec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(successCount, forKey: .successCount)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encode(failedRec, forKey: .failedRec)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: BulkRegionData
         Used By: Serviceability
     */

    class BulkRegionData: Codable {
        public var stage: String

        public var action: String

        public var failedCount: Int

        public var totalRec: Int

        public var error: BulkRecordError?

        public var createdOn: String?

        public var batchId: String

        public var successCount: Int

        public var filePath: String

        public var failedRec: [CSVFileRecord]?

        public enum CodingKeys: String, CodingKey {
            case stage

            case action

            case failedCount = "failed_count"

            case totalRec = "total_rec"

            case error

            case createdOn = "created_on"

            case batchId = "batch_id"

            case successCount = "success_count"

            case filePath = "file_path"

            case failedRec = "failed_rec"
        }

        public init(action: String, batchId: String, createdOn: String? = nil, error: BulkRecordError? = nil, failedCount: Int, failedRec: [CSVFileRecord]? = nil, filePath: String, stage: String, successCount: Int, totalRec: Int) {
            self.stage = stage

            self.action = action

            self.failedCount = failedCount

            self.totalRec = totalRec

            self.error = error

            self.createdOn = createdOn

            self.batchId = batchId

            self.successCount = successCount

            self.filePath = filePath

            self.failedRec = failedRec
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stage = try container.decode(String.self, forKey: .stage)

            action = try container.decode(String.self, forKey: .action)

            failedCount = try container.decode(Int.self, forKey: .failedCount)

            totalRec = try container.decode(Int.self, forKey: .totalRec)

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

            successCount = try container.decode(Int.self, forKey: .successCount)

            filePath = try container.decode(String.self, forKey: .filePath)

            do {
                failedRec = try container.decode([CSVFileRecord].self, forKey: .failedRec)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(failedCount, forKey: .failedCount)

            try? container.encodeIfPresent(totalRec, forKey: .totalRec)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(successCount, forKey: .successCount)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encode(failedRec, forKey: .failedRec)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: JobHistoryDto
         Used By: Inventory
     */

    class JobHistoryDto: Codable {
        public var totalAddedCount: Int?

        public var totalUpdatedCount: Int?

        public var totalSuppressedCount: Int?

        public var totalInitialCount: Int?

        public var jobId: Int?

        public var status: String?

        public var jobCode: String?

        public var processedOn: String?

        public var filename: [String]?

        public var errorType: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case totalAddedCount = "total_added_count"

            case totalUpdatedCount = "total_updated_count"

            case totalSuppressedCount = "total_suppressed_count"

            case totalInitialCount = "total_initial_count"

            case jobId = "job_id"

            case status

            case jobCode = "job_code"

            case processedOn = "processed_on"

            case filename

            case errorType = "error_type"

            case message
        }

        public init(errorType: String? = nil, filename: [String]? = nil, jobCode: String? = nil, jobId: Int? = nil, message: String? = nil, processedOn: String? = nil, status: String? = nil, totalAddedCount: Int? = nil, totalInitialCount: Int? = nil, totalSuppressedCount: Int? = nil, totalUpdatedCount: Int? = nil) {
            self.totalAddedCount = totalAddedCount

            self.totalUpdatedCount = totalUpdatedCount

            self.totalSuppressedCount = totalSuppressedCount

            self.totalInitialCount = totalInitialCount

            self.jobId = jobId

            self.status = status

            self.jobCode = jobCode

            self.processedOn = processedOn

            self.filename = filename

            self.errorType = errorType

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalAddedCount = try container.decode(Int.self, forKey: .totalAddedCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalUpdatedCount = try container.decode(Int.self, forKey: .totalUpdatedCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalSuppressedCount = try container.decode(Int.self, forKey: .totalSuppressedCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalInitialCount = try container.decode(Int.self, forKey: .totalInitialCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jobId = try container.decode(Int.self, forKey: .jobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jobCode = try container.decode(String.self, forKey: .jobCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processedOn = try container.decode(String.self, forKey: .processedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filename = try container.decode([String].self, forKey: .filename)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorType = try container.decode(String.self, forKey: .errorType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalAddedCount, forKey: .totalAddedCount)

            try? container.encodeIfPresent(totalUpdatedCount, forKey: .totalUpdatedCount)

            try? container.encodeIfPresent(totalSuppressedCount, forKey: .totalSuppressedCount)

            try? container.encodeIfPresent(totalInitialCount, forKey: .totalInitialCount)

            try? container.encodeIfPresent(jobId, forKey: .jobId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(jobCode, forKey: .jobCode)

            try? container.encodeIfPresent(processedOn, forKey: .processedOn)

            try? container.encodeIfPresent(filename, forKey: .filename)

            try? container.encodeIfPresent(errorType, forKey: .errorType)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

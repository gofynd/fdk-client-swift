

import Foundation
public extension PlatformClient {
    /*
         Model: JobMetricsDto
         Used By: Inventory
     */

    class JobMetricsDto: Codable {
        public var jobCode: String?

        public var isRunMoreThanUsual: String?

        public var jobHistory: [JobHistoryDto]?

        public var totalSuccessCount: Int?

        public var totalFailureCount: Int?

        public var totalWarningCount: Int?

        public var totalSuppressedCount: Int?

        public var totalJobRuns: Int?

        public enum CodingKeys: String, CodingKey {
            case jobCode = "job_code"

            case isRunMoreThanUsual = "is_run_more_than_usual"

            case jobHistory = "job_history"

            case totalSuccessCount = "total_success_count"

            case totalFailureCount = "total_failure_count"

            case totalWarningCount = "total_warning_count"

            case totalSuppressedCount = "total_suppressed_count"

            case totalJobRuns = "total_job_runs"
        }

        public init(isRunMoreThanUsual: String? = nil, jobCode: String? = nil, jobHistory: [JobHistoryDto]? = nil, totalFailureCount: Int? = nil, totalJobRuns: Int? = nil, totalSuccessCount: Int? = nil, totalSuppressedCount: Int? = nil, totalWarningCount: Int? = nil) {
            self.jobCode = jobCode

            self.isRunMoreThanUsual = isRunMoreThanUsual

            self.jobHistory = jobHistory

            self.totalSuccessCount = totalSuccessCount

            self.totalFailureCount = totalFailureCount

            self.totalWarningCount = totalWarningCount

            self.totalSuppressedCount = totalSuppressedCount

            self.totalJobRuns = totalJobRuns
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jobCode = try container.decode(String.self, forKey: .jobCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isRunMoreThanUsual = try container.decode(String.self, forKey: .isRunMoreThanUsual)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jobHistory = try container.decode([JobHistoryDto].self, forKey: .jobHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalSuccessCount = try container.decode(Int.self, forKey: .totalSuccessCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalFailureCount = try container.decode(Int.self, forKey: .totalFailureCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalWarningCount = try container.decode(Int.self, forKey: .totalWarningCount)

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
                totalJobRuns = try container.decode(Int.self, forKey: .totalJobRuns)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jobCode, forKey: .jobCode)

            try? container.encodeIfPresent(isRunMoreThanUsual, forKey: .isRunMoreThanUsual)

            try? container.encodeIfPresent(jobHistory, forKey: .jobHistory)

            try? container.encodeIfPresent(totalSuccessCount, forKey: .totalSuccessCount)

            try? container.encodeIfPresent(totalFailureCount, forKey: .totalFailureCount)

            try? container.encodeIfPresent(totalWarningCount, forKey: .totalWarningCount)

            try? container.encodeIfPresent(totalSuppressedCount, forKey: .totalSuppressedCount)

            try? container.encodeIfPresent(totalJobRuns, forKey: .totalJobRuns)
        }
    }
}



import Foundation
public extension PublicClient {
    /*
         Model: EmailJobMetrics
         Used By: Inventory
     */

    class EmailJobMetrics: Codable {
        public var executed: Bool?

        public var id: String?

        public var jobCode: String?

        public var dailyJob: Bool?

        public var lastExecutedOn: String?

        public enum CodingKeys: String, CodingKey {
            case executed

            case id

            case jobCode = "job_code"

            case dailyJob = "daily_job"

            case lastExecutedOn = "last_executed_on"
        }

        public init(dailyJob: Bool? = nil, executed: Bool? = nil, id: String? = nil, jobCode: String? = nil, lastExecutedOn: String? = nil) {
            self.executed = executed

            self.id = id

            self.jobCode = jobCode

            self.dailyJob = dailyJob

            self.lastExecutedOn = lastExecutedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                executed = try container.decode(Bool.self, forKey: .executed)

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
                jobCode = try container.decode(String.self, forKey: .jobCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dailyJob = try container.decode(Bool.self, forKey: .dailyJob)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastExecutedOn = try container.decode(String.self, forKey: .lastExecutedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(executed, forKey: .executed)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(jobCode, forKey: .jobCode)

            try? container.encodeIfPresent(dailyJob, forKey: .dailyJob)

            try? container.encodeIfPresent(lastExecutedOn, forKey: .lastExecutedOn)
        }
    }
}

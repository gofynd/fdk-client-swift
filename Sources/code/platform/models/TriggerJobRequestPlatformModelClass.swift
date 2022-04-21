

import Foundation
public extension PlatformClient {
    /*
         Model: TriggerJobRequest
         Used By: Communication
     */

    class TriggerJobRequest: Codable {
        public var jobId: String?

        public enum CodingKeys: String, CodingKey {
            case jobId = "job_id"
        }

        public init(jobId: String? = nil) {
            self.jobId = jobId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jobId = try container.decode(String.self, forKey: .jobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jobId, forKey: .jobId)
        }
    }
}

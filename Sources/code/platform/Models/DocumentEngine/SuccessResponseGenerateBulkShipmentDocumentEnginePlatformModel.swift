

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: SuccessResponseGenerateBulkShipment
         Used By: DocumentEngine
     */

    class SuccessResponseGenerateBulkShipment: Codable {
        public var success: Bool

        public var jobId: Double

        public var traceId: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case jobId = "job_id"

            case traceId = "trace_id"
        }

        public init(jobId: Double, success: Bool, traceId: String? = nil) {
            self.success = success

            self.jobId = jobId

            self.traceId = traceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            jobId = try container.decode(Double.self, forKey: .jobId)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(jobId, forKey: .jobId)

            try? container.encodeIfPresent(traceId, forKey: .traceId)
        }
    }
}

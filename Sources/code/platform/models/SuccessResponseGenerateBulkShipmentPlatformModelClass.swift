

import Foundation
public extension PlatformClient {
    /*
         Model: SuccessResponseGenerateBulkShipment
         Used By: DocumentEngine
     */

    class SuccessResponseGenerateBulkShipment: Codable {
        public var success: Bool

        public var jobId: Double

        public enum CodingKeys: String, CodingKey {
            case success

            case jobId = "job_id"
        }

        public init(jobId: Double, success: Bool) {
            self.success = success

            self.jobId = jobId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            jobId = try container.decode(Double.self, forKey: .jobId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(jobId, forKey: .jobId)
        }
    }
}

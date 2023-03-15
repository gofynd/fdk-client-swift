

import Foundation
public extension PlatformClient {
    /*
         Model: ExportJobRes
         Used By: Analytics
     */

    class ExportJobRes: Codable {
        public var status: String?

        public var jobId: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case jobId = "job_id"
        }

        public init(jobId: String? = nil, status: String? = nil) {
            self.status = status

            self.jobId = jobId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jobId = try container.decode(String.self, forKey: .jobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(jobId, forKey: .jobId)
        }
    }
}

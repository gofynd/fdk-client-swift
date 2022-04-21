

import Foundation
public extension PlatformClient {
    /*
         Model: MetaStructure
         Used By: Communication
     */

    class MetaStructure: Codable {
        public var jobType: String?

        public var action: String?

        public var trace: String?

        public var timestamp: String?

        public enum CodingKeys: String, CodingKey {
            case jobType = "job_type"

            case action

            case trace

            case timestamp
        }

        public init(action: String? = nil, jobType: String? = nil, timestamp: String? = nil, trace: String? = nil) {
            self.jobType = jobType

            self.action = action

            self.trace = trace

            self.timestamp = timestamp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jobType = try container.decode(String.self, forKey: .jobType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trace = try container.decode(String.self, forKey: .trace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timestamp = try container.decode(String.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jobType, forKey: .jobType)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(trace, forKey: .trace)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
        }
    }
}

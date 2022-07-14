

import Foundation
public extension PlatformClient {
    /*
         Model: KafkaMetaModel
         Used By: Inventory
     */

    class KafkaMetaModel: Codable {
        public var jobType: String?

        public var batchId: Int?

        public var action: String?

        public var trace: [String]?

        public var createdOn: String?

        public var createdTimestamp: Int?

        public enum CodingKeys: String, CodingKey {
            case jobType = "job_type"

            case batchId = "batch_id"

            case action

            case trace

            case createdOn = "created_on"

            case createdTimestamp = "created_timestamp"
        }

        public init(action: String? = nil, batchId: Int? = nil, createdOn: String? = nil, createdTimestamp: Int? = nil, jobType: String? = nil, trace: [String]? = nil) {
            self.jobType = jobType

            self.batchId = batchId

            self.action = action

            self.trace = trace

            self.createdOn = createdOn

            self.createdTimestamp = createdTimestamp
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
                batchId = try container.decode(Int.self, forKey: .batchId)

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
                trace = try container.decode([String].self, forKey: .trace)

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

            do {
                createdTimestamp = try container.decode(Int.self, forKey: .createdTimestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jobType, forKey: .jobType)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(trace, forKey: .trace)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdTimestamp, forKey: .createdTimestamp)
        }
    }
}

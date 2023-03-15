

import Foundation
public extension PlatformClient {
    /*
         Model: JobStepsDTO
         Used By: Inventory
     */

    class JobStepsDTO: Codable {
        public var stepName: String?

        public var type: String?

        public var stepExecutionTime: Int?

        public var startCount: Int?

        public var endCount: Int?

        public var deletedCount: Int?

        public var processedStartTime: String?

        public var processedAt: String?

        public enum CodingKeys: String, CodingKey {
            case stepName = "step_name"

            case type

            case stepExecutionTime = "step_execution_time"

            case startCount = "start_count"

            case endCount = "end_count"

            case deletedCount = "deleted_count"

            case processedStartTime = "processed_start_time"

            case processedAt = "processed_at"
        }

        public init(deletedCount: Int? = nil, endCount: Int? = nil, processedAt: String? = nil, processedStartTime: String? = nil, startCount: Int? = nil, stepExecutionTime: Int? = nil, stepName: String? = nil, type: String? = nil) {
            self.stepName = stepName

            self.type = type

            self.stepExecutionTime = stepExecutionTime

            self.startCount = startCount

            self.endCount = endCount

            self.deletedCount = deletedCount

            self.processedStartTime = processedStartTime

            self.processedAt = processedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stepName = try container.decode(String.self, forKey: .stepName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stepExecutionTime = try container.decode(Int.self, forKey: .stepExecutionTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startCount = try container.decode(Int.self, forKey: .startCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endCount = try container.decode(Int.self, forKey: .endCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deletedCount = try container.decode(Int.self, forKey: .deletedCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processedStartTime = try container.decode(String.self, forKey: .processedStartTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processedAt = try container.decode(String.self, forKey: .processedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stepName, forKey: .stepName)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(stepExecutionTime, forKey: .stepExecutionTime)

            try? container.encodeIfPresent(startCount, forKey: .startCount)

            try? container.encodeIfPresent(endCount, forKey: .endCount)

            try? container.encodeIfPresent(deletedCount, forKey: .deletedCount)

            try? container.encodeIfPresent(processedStartTime, forKey: .processedStartTime)

            try? container.encodeIfPresent(processedAt, forKey: .processedAt)
        }
    }
}

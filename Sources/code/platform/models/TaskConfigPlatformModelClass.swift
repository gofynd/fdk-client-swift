

import Foundation
public extension PlatformClient {
    /*
         Model: TaskConfig
         Used By: Inventory
     */

    class TaskConfig: Codable {
        public var name: String?

        public var taskConfigId: Int?

        public var taskParams: [TaskParam]?

        public enum CodingKeys: String, CodingKey {
            case name

            case taskConfigId = "task_config_id"

            case taskParams = "task_params"
        }

        public init(name: String? = nil, taskConfigId: Int? = nil, taskParams: [TaskParam]? = nil) {
            self.name = name

            self.taskConfigId = taskConfigId

            self.taskParams = taskParams
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taskConfigId = try container.decode(Int.self, forKey: .taskConfigId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taskParams = try container.decode([TaskParam].self, forKey: .taskParams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(taskConfigId, forKey: .taskConfigId)

            try? container.encodeIfPresent(taskParams, forKey: .taskParams)
        }
    }
}

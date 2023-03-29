

import Foundation
public extension PlatformClient {
    /*
         Model: TaskStepConfig
         Used By: Inventory
     */

    class TaskStepConfig: Codable {
        public var taskConfigs: [TaskConfig]?

        public var taskConfigIds: [Int]?

        public var taskConfigGroupIds: [Int]?

        public enum CodingKeys: String, CodingKey {
            case taskConfigs = "task_configs"

            case taskConfigIds = "task_config_ids"

            case taskConfigGroupIds = "task_config_group_ids"
        }

        public init(taskConfigs: [TaskConfig]? = nil, taskConfigGroupIds: [Int]? = nil, taskConfigIds: [Int]? = nil) {
            self.taskConfigs = taskConfigs

            self.taskConfigIds = taskConfigIds

            self.taskConfigGroupIds = taskConfigGroupIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taskConfigs = try container.decode([TaskConfig].self, forKey: .taskConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taskConfigIds = try container.decode([Int].self, forKey: .taskConfigIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taskConfigGroupIds = try container.decode([Int].self, forKey: .taskConfigGroupIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taskConfigs, forKey: .taskConfigs)

            try? container.encodeIfPresent(taskConfigIds, forKey: .taskConfigIds)

            try? container.encodeIfPresent(taskConfigGroupIds, forKey: .taskConfigGroupIds)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportResponse
         Used By: Catalog
     */

    class InventoryExportResponse: Codable {
        public var sellerId: Int

        public var taskId: String

        public var status: String?

        public var triggerOn: String?

        public var requestParams: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case sellerId = "seller_id"

            case taskId = "task_id"

            case status

            case triggerOn = "trigger_on"

            case requestParams = "request_params"
        }

        public init(requestParams: [String: Any]? = nil, sellerId: Int, status: String? = nil, taskId: String, triggerOn: String? = nil) {
            self.sellerId = sellerId

            self.taskId = taskId

            self.status = status

            self.triggerOn = triggerOn

            self.requestParams = requestParams
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestParams = try container.decode([String: Any].self, forKey: .requestParams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var url: String?

        public var completedOn: String?

        public var sellerId: Int

        public var taskId: String

        public var status: String?

        public var requestParams: [String: Any]?

        public var triggerOn: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case completedOn = "completed_on"

            case sellerId = "seller_id"

            case taskId = "task_id"

            case status

            case requestParams = "request_params"

            case triggerOn = "trigger_on"
        }

        public init(completedOn: String? = nil, requestParams: [String: Any]? = nil, sellerId: Int, status: String? = nil, taskId: String, triggerOn: String? = nil, url: String? = nil) {
            self.url = url

            self.completedOn = completedOn

            self.sellerId = sellerId

            self.taskId = taskId

            self.status = status

            self.requestParams = requestParams

            self.triggerOn = triggerOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                status = try container.decode(String.self, forKey: .status)

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

            do {
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)
        }
    }
}

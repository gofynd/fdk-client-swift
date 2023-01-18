

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var sellerId: Int

        public var taskId: String

        public var url: String?

        public var requestParams: [String: Any]?

        public var completedOn: String?

        public var status: String?

        public var triggerOn: String?

        public enum CodingKeys: String, CodingKey {
            case sellerId = "seller_id"

            case taskId = "task_id"

            case url

            case requestParams = "request_params"

            case completedOn = "completed_on"

            case status

            case triggerOn = "trigger_on"
        }

        public init(completedOn: String? = nil, requestParams: [String: Any]? = nil, sellerId: Int, status: String? = nil, taskId: String, triggerOn: String? = nil, url: String? = nil) {
            self.sellerId = sellerId

            self.taskId = taskId

            self.url = url

            self.requestParams = requestParams

            self.completedOn = completedOn

            self.status = status

            self.triggerOn = triggerOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                url = try container.decode(String.self, forKey: .url)

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
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)
        }
    }
}

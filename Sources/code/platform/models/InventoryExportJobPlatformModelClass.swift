

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var taskId: String

        public var triggerOn: String?

        public var requestParams: [String: Any]?

        public var completedOn: String?

        public var sellerId: Int

        public var status: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case taskId = "task_id"

            case triggerOn = "trigger_on"

            case requestParams = "request_params"

            case completedOn = "completed_on"

            case sellerId = "seller_id"

            case status

            case url
        }

        public init(completedOn: String? = nil, requestParams: [String: Any]? = nil, sellerId: Int, status: String? = nil, taskId: String, triggerOn: String? = nil, url: String? = nil) {
            self.taskId = taskId

            self.triggerOn = triggerOn

            self.requestParams = requestParams

            self.completedOn = completedOn

            self.sellerId = sellerId

            self.status = status

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taskId = try container.decode(String.self, forKey: .taskId)

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

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}

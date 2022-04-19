import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var status: String?

        public var requestParams: [String: Any]?

        public var url: String?

        public var completedOn: String?

        public var taskId: String

        public var sellerId: Int

        public var triggerOn: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case requestParams = "request_params"

            case url

            case completedOn = "completed_on"

            case taskId = "task_id"

            case sellerId = "seller_id"

            case triggerOn = "trigger_on"
        }

        public init(completedOn: String?, requestParams: [String: Any]?, sellerId: Int, status: String?, taskId: String, triggerOn: String?, url: String?) {
            self.status = status

            self.requestParams = requestParams

            self.url = url

            self.completedOn = completedOn

            self.taskId = taskId

            self.sellerId = sellerId

            self.triggerOn = triggerOn
        }

        public func duplicate() -> InventoryExportJob {
            let dict = self.dictionary!
            let copy = InventoryExportJob(dictionary: dict)!
            return copy
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
                requestParams = try container.decode([String: Any].self, forKey: .requestParams)

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

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taskId = try container.decode(String.self, forKey: .taskId)

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)
        }
    }
}

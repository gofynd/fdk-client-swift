

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var completedOn: String?

        public var taskId: String

        public var sellerId: Int

        public var requestParams: InventoryExportAdvanceOption?

        public var triggerOn: String?

        public var status: String?

        public var notificationEmails: [String]?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case completedOn = "completed_on"

            case taskId = "task_id"

            case sellerId = "seller_id"

            case requestParams = "request_params"

            case triggerOn = "trigger_on"

            case status

            case notificationEmails = "notification_emails"

            case url
        }

        public init(completedOn: String? = nil, notificationEmails: [String]? = nil, requestParams: InventoryExportAdvanceOption? = nil, sellerId: Int, status: String? = nil, taskId: String, triggerOn: String? = nil, url: String? = nil) {
            self.completedOn = completedOn

            self.taskId = taskId

            self.sellerId = sellerId

            self.requestParams = requestParams

            self.triggerOn = triggerOn

            self.status = status

            self.notificationEmails = notificationEmails

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taskId = try container.decode(String.self, forKey: .taskId)

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                requestParams = try container.decode(InventoryExportAdvanceOption.self, forKey: .requestParams)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}

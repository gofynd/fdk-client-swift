

import Foundation
public extension PlatformClient {
    /*
         Model: ProductDownloadsItems
         Used By: Catalog
     */

    class ProductDownloadsItems: Codable {
        public var triggerOn: String?

        public var id: String?

        public var url: String?

        public var status: String?

        public var createdBy: VerifiedBy?

        public var sellerId: Double?

        public var taskId: String?

        public var templateTags: [String: Any]?

        public var completedOn: String?

        public var data: ProductDownloadItemsData?

        public enum CodingKeys: String, CodingKey {
            case triggerOn = "trigger_on"

            case id

            case url

            case status

            case createdBy = "created_by"

            case sellerId = "seller_id"

            case taskId = "task_id"

            case templateTags = "template_tags"

            case completedOn = "completed_on"

            case data
        }

        public init(completedOn: String? = nil, createdBy: VerifiedBy? = nil, data: ProductDownloadItemsData? = nil, id: String? = nil, sellerId: Double? = nil, status: String? = nil, taskId: String? = nil, templateTags: [String: Any]? = nil, triggerOn: String? = nil, url: String? = nil) {
            self.triggerOn = triggerOn

            self.id = id

            self.url = url

            self.status = status

            self.createdBy = createdBy

            self.sellerId = sellerId

            self.taskId = taskId

            self.templateTags = templateTags

            self.completedOn = completedOn

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(VerifiedBy.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerId = try container.decode(Double.self, forKey: .sellerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taskId = try container.decode(String.self, forKey: .taskId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTags = try container.decode([String: Any].self, forKey: .templateTags)

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
                data = try container.decode(ProductDownloadItemsData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(templateTags, forKey: .templateTags)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

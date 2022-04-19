import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: BulkProductRequest
         Used By: Catalog
     */

    class BulkProductRequest: Codable {
        public var batchId: String

        public var templateTag: String

        public var companyId: Int

        public var data: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case templateTag = "template_tag"

            case companyId = "company_id"

            case data
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            self.batchId = batchId

            self.templateTag = templateTag

            self.companyId = companyId

            self.data = data
        }

        public func duplicate() -> BulkProductRequest {
            let dict = self.dictionary!
            let copy = BulkProductRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            companyId = try container.decode(Int.self, forKey: .companyId)

            data = try container.decode([[String: Any]].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

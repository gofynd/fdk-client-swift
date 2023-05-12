

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: BulkProductRequest
         Used By: Catalog
     */

    class BulkProductRequest: Codable {
        public var batchId: String

        public var templateTag: String

        public var data: [[String: Any]]

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case templateTag = "template_tag"

            case data

            case companyId = "company_id"
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            self.batchId = batchId

            self.templateTag = templateTag

            self.data = data

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            data = try container.decode([[String: Any]].self, forKey: .data)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: BulkProductRequest
         Used By: Catalog
     */

    class BulkProductRequest: Codable {
        public var batchId: String

        public var templateTag: String

        public var data: [[String: Any]]

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case templateTag = "template_tag"

            case data

            case companyId = "company_id"
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            self.batchId = batchId

            self.templateTag = templateTag

            self.data = data

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            data = try container.decode([[String: Any]].self, forKey: .data)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

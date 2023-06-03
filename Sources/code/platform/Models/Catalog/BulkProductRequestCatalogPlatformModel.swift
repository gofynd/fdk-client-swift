

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: BulkProductRequest
         Used By: Catalog
     */

    class BulkProductRequest: Codable {
        public var data: [[String: Any]]

        public var companyId: Int

        public var batchId: String

        public var templateTag: String

        public enum CodingKeys: String, CodingKey {
            case data

            case companyId = "company_id"

            case batchId = "batch_id"

            case templateTag = "template_tag"
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            self.data = data

            self.companyId = companyId

            self.batchId = batchId

            self.templateTag = templateTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([[String: Any]].self, forKey: .data)

            companyId = try container.decode(Int.self, forKey: .companyId)

            batchId = try container.decode(String.self, forKey: .batchId)

            templateTag = try container.decode(String.self, forKey: .templateTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: BulkProductRequest
         Used By: Catalog
     */

    class BulkProductRequest: Codable {
        public var data: [[String: Any]]

        public var companyId: Int

        public var batchId: String

        public var templateTag: String

        public enum CodingKeys: String, CodingKey {
            case data

            case companyId = "company_id"

            case batchId = "batch_id"

            case templateTag = "template_tag"
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            self.data = data

            self.companyId = companyId

            self.batchId = batchId

            self.templateTag = templateTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([[String: Any]].self, forKey: .data)

            companyId = try container.decode(Int.self, forKey: .companyId)

            batchId = try container.decode(String.self, forKey: .batchId)

            templateTag = try container.decode(String.self, forKey: .templateTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
        }
    }
}

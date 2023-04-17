

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: GenerateBulkShipment
         Used By: DocumentEngine
     */

    class GenerateBulkShipment: Codable {
        public var uid: String

        public var storeCode: String

        public var batchId: String

        public var documentType: String

        public enum CodingKeys: String, CodingKey {
            case uid

            case storeCode = "store_code"

            case batchId = "batch_id"

            case documentType = "document_type"
        }

        public init(batchId: String, documentType: String, storeCode: String, uid: String) {
            self.uid = uid

            self.storeCode = storeCode

            self.batchId = batchId

            self.documentType = documentType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            batchId = try container.decode(String.self, forKey: .batchId)

            documentType = try container.decode(String.self, forKey: .documentType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(documentType, forKey: .documentType)
        }
    }
}

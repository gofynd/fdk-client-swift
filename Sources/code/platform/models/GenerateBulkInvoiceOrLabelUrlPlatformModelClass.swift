

import Foundation
public extension PlatformClient {
    /*
         Model: GenerateBulkInvoiceOrLabelUrl
         Used By: DocumentEngine
     */

    class GenerateBulkInvoiceOrLabelUrl: Codable {
        public var uid: String

        public var documentType: String

        public var batchId: Double

        public enum CodingKeys: String, CodingKey {
            case uid

            case documentType = "document_type"

            case batchId = "batch_id"
        }

        public init(batchId: Double, documentType: String, uid: String) {
            self.uid = uid

            self.documentType = documentType

            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            documentType = try container.decode(String.self, forKey: .documentType)

            batchId = try container.decode(Double.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(documentType, forKey: .documentType)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }
}

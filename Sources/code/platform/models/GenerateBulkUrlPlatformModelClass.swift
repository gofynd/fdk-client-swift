

import Foundation
public extension PlatformClient {
    /*
         Model: GenerateBulkUrl
         Used By: DocumentEngine
     */

    class GenerateBulkUrl: Codable {
        public var expiresIn: Double?

        public var documentType: String

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case expiresIn = "expires_in"

            case documentType = "document_type"

            case batchId = "batch_id"
        }

        public init(batchId: String, documentType: String, expiresIn: Double? = nil) {
            self.expiresIn = expiresIn

            self.documentType = documentType

            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expiresIn = try container.decode(Double.self, forKey: .expiresIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            documentType = try container.decode(String.self, forKey: .documentType)

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(documentType, forKey: .documentType)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }
}

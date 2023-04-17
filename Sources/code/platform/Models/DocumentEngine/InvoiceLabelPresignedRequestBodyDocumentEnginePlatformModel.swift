

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: InvoiceLabelPresignedRequestBody
         Used By: DocumentEngine
     */

    class InvoiceLabelPresignedRequestBody: Codable {
        public var documentType: String

        public var entityId: String

        public var expiresIn: Double?

        public enum CodingKeys: String, CodingKey {
            case documentType = "document_type"

            case entityId = "entity_id"

            case expiresIn = "expires_in"
        }

        public init(documentType: String, entityId: String, expiresIn: Double? = nil) {
            self.documentType = documentType

            self.entityId = entityId

            self.expiresIn = expiresIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            documentType = try container.decode(String.self, forKey: .documentType)

            entityId = try container.decode(String.self, forKey: .entityId)

            do {
                expiresIn = try container.decode(Double.self, forKey: .expiresIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(documentType, forKey: .documentType)

            try? container.encodeIfPresent(entityId, forKey: .entityId)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        }
    }
}

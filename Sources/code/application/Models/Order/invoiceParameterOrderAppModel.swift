

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: invoiceParameter
         Used By: Order
     */
    class invoiceParameter: Codable {
        public var documentType: String?

        public var expiresIn: Int?

        public enum CodingKeys: String, CodingKey {
            case documentType = "document_type"

            case expiresIn = "expires_in"
        }

        public init(documentType: String? = nil, expiresIn: Int? = nil) {
            self.documentType = documentType

            self.expiresIn = expiresIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                documentType = try container.decode(String.self, forKey: .documentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiresIn = try container.decode(Int.self, forKey: .expiresIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(documentType, forKey: .documentType)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        }
    }
}

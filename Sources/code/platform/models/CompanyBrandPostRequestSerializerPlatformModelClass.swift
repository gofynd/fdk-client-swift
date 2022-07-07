

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyBrandPostRequestSerializer
         Used By: CompanyProfile
     */

    class CompanyBrandPostRequestSerializer: Codable {
        public var brands: [Int]

        public var documents: [CompanyBrandDocumentsSerializer]?

        public var documentRequired: Bool?

        public var uid: Int?

        public var company: Int

        public enum CodingKeys: String, CodingKey {
            case brands

            case documents

            case documentRequired = "document_required"

            case uid

            case company
        }

        public init(brands: [Int], company: Int, documents: [CompanyBrandDocumentsSerializer]? = nil, documentRequired: Bool? = nil, uid: Int? = nil) {
            self.brands = brands

            self.documents = documents

            self.documentRequired = documentRequired

            self.uid = uid

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brands = try container.decode([Int].self, forKey: .brands)

            do {
                documents = try container.decode([CompanyBrandDocumentsSerializer].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documentRequired = try container.decode(Bool.self, forKey: .documentRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(Int.self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(documentRequired, forKey: .documentRequired)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}

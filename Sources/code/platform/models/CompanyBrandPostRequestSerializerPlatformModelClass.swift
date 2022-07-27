

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyBrandPostRequestSerializer
         Used By: CompanyProfile
     */

    class CompanyBrandPostRequestSerializer: Codable {
        public var documents: [CompanyBrandDocumentsSerializer]?

        public var brands: [Int]

        public var documentRequired: Bool?

        public var company: Int

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case documents

            case brands

            case documentRequired = "document_required"

            case company

            case uid
        }

        public init(brands: [Int], company: Int, documents: [CompanyBrandDocumentsSerializer]? = nil, documentRequired: Bool? = nil, uid: Int? = nil) {
            self.documents = documents

            self.brands = brands

            self.documentRequired = documentRequired

            self.company = company

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                documents = try container.decode([CompanyBrandDocumentsSerializer].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brands = try container.decode([Int].self, forKey: .brands)

            do {
                documentRequired = try container.decode(Bool.self, forKey: .documentRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(Int.self, forKey: .company)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(documentRequired, forKey: .documentRequired)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}

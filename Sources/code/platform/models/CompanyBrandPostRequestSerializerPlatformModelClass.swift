

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyBrandPostRequestSerializer
         Used By: CompanyProfile
     */

    class CompanyBrandPostRequestSerializer: Codable {
        public var brands: [Int]

        public var uid: Int?

        public var documents: [CompanyBrandDocumentsSerializer]?

        public var company: Int

        public enum CodingKeys: String, CodingKey {
            case brands

            case uid

            case documents

            case company
        }

        public init(brands: [Int], company: Int, documents: [CompanyBrandDocumentsSerializer]? = nil, uid: Int? = nil) {
            self.brands = brands

            self.uid = uid

            self.documents = documents

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brands = try container.decode([Int].self, forKey: .brands)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([CompanyBrandDocumentsSerializer].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(Int.self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}

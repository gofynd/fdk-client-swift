

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyBrandPostRequestSerializer
         Used By: CompanyProfile
     */

    class CompanyBrandPostRequestSerializer: Codable {
        public var company: Int

        public var brands: [Int]

        public var documents: [CompanyBrandDocumentsSerializer]?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case company

            case brands

            case documents

            case uid
        }

        public init(brands: [Int], company: Int, documents: [CompanyBrandDocumentsSerializer]? = nil, uid: Int? = nil) {
            self.company = company

            self.brands = brands

            self.documents = documents

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode(Int.self, forKey: .company)

            brands = try container.decode([Int].self, forKey: .brands)

            do {
                documents = try container.decode([CompanyBrandDocumentsSerializer].self, forKey: .documents)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: CompanyBrandSerializer
         Used By: CompanyProfile
     */

    class CompanyBrandSerializer: Codable {
        public var rejectReason: String?

        public var stage: String?

        public var company: CompanySerializer?

        public var warnings: [String: Any]?

        public var uid: Int?

        public var corrections: [[String: Any]]?

        public var brand: GetBrandResponseSerializer?

        public var documents: [CompanyBrandDocumentsResponseSerializer]?

        public enum CodingKeys: String, CodingKey {
            case rejectReason = "reject_reason"

            case stage

            case company

            case warnings

            case uid

            case corrections

            case brand

            case documents
        }

        public init(brand: GetBrandResponseSerializer? = nil, company: CompanySerializer? = nil, corrections: [[String: Any]]? = nil, documents: [CompanyBrandDocumentsResponseSerializer]? = nil, rejectReason: String? = nil, stage: String? = nil, uid: Int? = nil, warnings: [String: Any]? = nil) {
            self.rejectReason = rejectReason

            self.stage = stage

            self.company = company

            self.warnings = warnings

            self.uid = uid

            self.corrections = corrections

            self.brand = brand

            self.documents = documents
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(CompanySerializer.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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

            do {
                corrections = try container.decode([[String: Any]].self, forKey: .corrections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(GetBrandResponseSerializer.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([CompanyBrandDocumentsResponseSerializer].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(corrections, forKey: .corrections)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(documents, forKey: .documents)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: HsnCodesObject
         Used By: Catalog
     */

    class HsnCodesObject: Codable {
        public var modifiedOn: String?

        public var hs2Code: String?

        public var hsnCode: String?

        public var threshold2: Double?

        public var taxOnEsp: Bool?

        public var tax2: Double?

        public var taxOnMrp: Bool?

        public var id: String?

        public var tax1: Double?

        public var companyId: Int?

        public var threshold1: Double?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case hs2Code = "hs2_code"

            case hsnCode = "hsn_code"

            case threshold2

            case taxOnEsp = "tax_on_esp"

            case tax2

            case taxOnMrp = "tax_on_mrp"

            case id

            case tax1

            case companyId = "company_id"

            case threshold1
        }

        public init(companyId: Int? = nil, hs2Code: String? = nil, hsnCode: String? = nil, id: String? = nil, modifiedOn: String? = nil, tax1: Double? = nil, tax2: Double? = nil, taxOnEsp: Bool? = nil, taxOnMrp: Bool? = nil, threshold1: Double? = nil, threshold2: Double? = nil) {
            self.modifiedOn = modifiedOn

            self.hs2Code = hs2Code

            self.hsnCode = hsnCode

            self.threshold2 = threshold2

            self.taxOnEsp = taxOnEsp

            self.tax2 = tax2

            self.taxOnMrp = taxOnMrp

            self.id = id

            self.tax1 = tax1

            self.companyId = companyId

            self.threshold1 = threshold1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hs2Code = try container.decode(String.self, forKey: .hs2Code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                threshold2 = try container.decode(Double.self, forKey: .threshold2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxOnEsp = try container.decode(Bool.self, forKey: .taxOnEsp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tax2 = try container.decode(Double.self, forKey: .tax2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxOnMrp = try container.decode(Bool.self, forKey: .taxOnMrp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tax1 = try container.decode(Double.self, forKey: .tax1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                threshold1 = try container.decode(Double.self, forKey: .threshold1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hs2Code, forKey: .hs2Code)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(threshold2, forKey: .threshold2)

            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)

            try? container.encodeIfPresent(tax2, forKey: .tax2)

            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(tax1, forKey: .tax1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(threshold1, forKey: .threshold1)
        }
    }
}

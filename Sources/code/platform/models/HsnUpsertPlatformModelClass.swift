

import Foundation
public extension PlatformClient {
    /*
         Model: HsnUpsert
         Used By: Catalog
     */

    class HsnUpsert: Codable {
        public var taxOnMrp: Bool

        public var companyId: Int

        public var threshold2: Double?

        public var hsnCode: String

        public var taxOnEsp: Bool?

        public var hs2Code: String

        public var isActive: Bool?

        public var threshold1: Double

        public var tax2: Double?

        public var uid: Int?

        public var tax1: Double

        public enum CodingKeys: String, CodingKey {
            case taxOnMrp = "tax_on_mrp"

            case companyId = "company_id"

            case threshold2

            case hsnCode = "hsn_code"

            case taxOnEsp = "tax_on_esp"

            case hs2Code = "hs2_code"

            case isActive = "is_active"

            case threshold1

            case tax2

            case uid

            case tax1
        }

        public init(companyId: Int, hs2Code: String, hsnCode: String, isActive: Bool? = nil, tax1: Double, tax2: Double? = nil, taxOnEsp: Bool? = nil, taxOnMrp: Bool, threshold1: Double, threshold2: Double? = nil, uid: Int? = nil) {
            self.taxOnMrp = taxOnMrp

            self.companyId = companyId

            self.threshold2 = threshold2

            self.hsnCode = hsnCode

            self.taxOnEsp = taxOnEsp

            self.hs2Code = hs2Code

            self.isActive = isActive

            self.threshold1 = threshold1

            self.tax2 = tax2

            self.uid = uid

            self.tax1 = tax1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxOnMrp = try container.decode(Bool.self, forKey: .taxOnMrp)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                threshold2 = try container.decode(Double.self, forKey: .threshold2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxOnEsp = try container.decode(Bool.self, forKey: .taxOnEsp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hs2Code = try container.decode(String.self, forKey: .hs2Code)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            threshold1 = try container.decode(Double.self, forKey: .threshold1)

            do {
                tax2 = try container.decode(Double.self, forKey: .tax2)

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

            tax1 = try container.decode(Double.self, forKey: .tax1)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxOnMrp, forKey: .taxOnMrp)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(threshold2, forKey: .threshold2)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxOnEsp, forKey: .taxOnEsp)

            try? container.encode(hs2Code, forKey: .hs2Code)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(threshold1, forKey: .threshold1)

            try? container.encodeIfPresent(tax2, forKey: .tax2)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(tax1, forKey: .tax1)
        }
    }
}

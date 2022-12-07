

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Orders
     */

    class BagGSTDetails: Codable {
        public var gstTag: String

        public var gstinCode: String?

        public var sgstGstFee: String

        public var cgstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var gstTaxPercentage: Double

        public var hsnCode: String

        public var igstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var igstGstFee: String

        public var hsnCodeId: String

        public var gstFee: Double

        public var cgstGstFee: String

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case gstinCode = "gstin_code"

            case sgstGstFee = "sgst_gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstGstFee = "igst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case gstFee = "gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.gstinCode = gstinCode

            self.sgstGstFee = sgstGstFee

            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.igstTaxPercentage = igstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstGstFee = igstGstFee

            self.hsnCodeId = hsnCodeId

            self.gstFee = gstFee

            self.cgstGstFee = cgstGstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}

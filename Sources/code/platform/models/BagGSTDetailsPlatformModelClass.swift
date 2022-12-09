

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var sgstGstFee: String

        public var igstGstFee: String

        public var sgstTaxPercentage: Double

        public var gstinCode: String?

        public var hsnCodeId: String

        public var hsnCode: String

        public var gstTaxPercentage: Double

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var valueOfGood: Double

        public var isDefaultHsnCode: Bool?

        public var cgstTaxPercentage: Double

        public var cgstGstFee: String

        public var igstTaxPercentage: Double

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case sgstGstFee = "sgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstinCode = "gstin_code"

            case hsnCodeId = "hsn_code_id"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"

            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstTag = "gst_tag"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.sgstGstFee = sgstGstFee

            self.igstGstFee = igstGstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstinCode = gstinCode

            self.hsnCodeId = hsnCodeId

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood

            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}

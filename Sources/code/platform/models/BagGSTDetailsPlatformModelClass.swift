

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var valueOfGood: Double

        public var gstTaxPercentage: Double

        public var gstinCode: String?

        public var hsnCodeId: String

        public var brandCalculatedAmount: Double

        public var igstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var igstGstFee: String

        public var cgstTaxPercentage: Double

        public var gstFee: Double

        public var taxCollectedAtSource: Double

        public var cgstGstFee: String

        public var sgstTaxPercentage: Double

        public var hsnCode: String

        public var sgstGstFee: String

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstinCode = "gstin_code"

            case hsnCodeId = "hsn_code_id"

            case brandCalculatedAmount = "brand_calculated_amount"

            case igstTaxPercentage = "igst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstGstFee = "igst_gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case gstFee = "gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstGstFee = "cgst_gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCode = "hsn_code"

            case sgstGstFee = "sgst_gst_fee"

            case gstTag = "gst_tag"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.gstTaxPercentage = gstTaxPercentage

            self.gstinCode = gstinCode

            self.hsnCodeId = hsnCodeId

            self.brandCalculatedAmount = brandCalculatedAmount

            self.igstTaxPercentage = igstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstGstFee = igstGstFee

            self.cgstTaxPercentage = cgstTaxPercentage

            self.gstFee = gstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstGstFee = cgstGstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCode = hsnCode

            self.sgstGstFee = sgstGstFee

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}

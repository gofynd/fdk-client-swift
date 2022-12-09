

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var sgstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var cgstGstFee: String

        public var cgstTaxPercentage: Double

        public var gstFee: Double

        public var hsnCodeId: String

        public var valueOfGood: Double

        public var igstGstFee: String

        public var brandCalculatedAmount: Double

        public var sgstGstFee: String

        public var hsnCode: String

        public var gstinCode: String?

        public var igstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case sgstTaxPercentage = "sgst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstGstFee = "cgst_gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case gstFee = "gst_fee"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"

            case igstGstFee = "igst_gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCode = "hsn_code"

            case gstinCode = "gstin_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTag = "gst_tag"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.sgstTaxPercentage = sgstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstGstFee = cgstGstFee

            self.cgstTaxPercentage = cgstTaxPercentage

            self.gstFee = gstFee

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood

            self.igstGstFee = igstGstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstGstFee = sgstGstFee

            self.hsnCode = hsnCode

            self.gstinCode = gstinCode

            self.igstTaxPercentage = igstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var hsnCodeId: String

        public var igstTaxPercentage: Double

        public var gstinCode: String?

        public var sgstGstFee: String

        public var sgstTaxPercentage: Double

        public var gstTag: String

        public var isDefaultHsnCode: Bool?

        public var taxCollectedAtSource: Double

        public var gstFee: Double

        public var igstGstFee: String

        public var cgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var gstTaxPercentage: Double

        public var cgstGstFee: String

        public var hsnCode: String

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstinCode = "gstin_code"

            case sgstGstFee = "sgst_gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstTag = "gst_tag"

            case isDefaultHsnCode = "is_default_hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case igstGstFee = "igst_gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.hsnCodeId = hsnCodeId

            self.igstTaxPercentage = igstTaxPercentage

            self.gstinCode = gstinCode

            self.sgstGstFee = sgstGstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstTag = gstTag

            self.isDefaultHsnCode = isDefaultHsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.igstGstFee = igstGstFee

            self.cgstTaxPercentage = cgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}

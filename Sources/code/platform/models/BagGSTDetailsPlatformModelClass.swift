

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var igstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var taxCollectedAtSource: Double

        public var sgstTaxPercentage: Double

        public var gstFee: Double

        public var cgstGstFee: String

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var sgstGstFee: String

        public var gstinCode: String?

        public var cgstTaxPercentage: Double

        public var igstGstFee: String

        public var hsnCode: String

        public var gstTaxPercentage: Double

        public var hsnCodeId: String

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case igstTaxPercentage = "igst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstFee = "gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstGstFee = "sgst_gst_fee"

            case gstinCode = "gstin_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.igstTaxPercentage = igstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstFee = gstFee

            self.cgstGstFee = cgstGstFee

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstGstFee = sgstGstFee

            self.gstinCode = gstinCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstGstFee = igstGstFee

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}

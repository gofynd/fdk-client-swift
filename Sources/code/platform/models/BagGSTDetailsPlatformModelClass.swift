

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var cgstGstFee: String

        public var igstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var gstTag: String

        public var valueOfGood: Double

        public var hsnCodeId: String

        public var sgstGstFee: String

        public var gstinCode: String?

        public var cgstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var igstGstFee: String

        public var taxCollectedAtSource: Double

        public var gstFee: Double

        public var hsnCode: String

        public var isDefaultHsnCode: Bool?

        public enum CodingKeys: String, CodingKey {
            case cgstGstFee = "cgst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case valueOfGood = "value_of_good"

            case hsnCodeId = "hsn_code_id"

            case sgstGstFee = "sgst_gst_fee"

            case gstinCode = "gstin_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case igstGstFee = "igst_gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case isDefaultHsnCode = "is_default_hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.cgstGstFee = cgstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.valueOfGood = valueOfGood

            self.hsnCodeId = hsnCodeId

            self.sgstGstFee = sgstGstFee

            self.gstinCode = gstinCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.igstGstFee = igstGstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.isDefaultHsnCode = isDefaultHsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)
        }
    }
}

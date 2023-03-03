

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var valueOfGood: Double

        public var isDefaultHsnCode: Bool?

        public var gstinCode: String?

        public var taxCollectedAtSource: Double

        public var gstFee: Double

        public var sgstGstFee: String

        public var igstGstFee: String

        public var cgstGstFee: String

        public var gstTag: String

        public var gstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var cgstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var hsnCode: String

        public var hsnCodeId: String

        public var brandCalculatedAmount: Double

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCode = "hsn_code"

            case hsnCodeId = "hsn_code_id"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.sgstGstFee = sgstGstFee

            self.igstGstFee = igstGstFee

            self.cgstGstFee = cgstGstFee

            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCode = hsnCode

            self.hsnCodeId = hsnCodeId

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}

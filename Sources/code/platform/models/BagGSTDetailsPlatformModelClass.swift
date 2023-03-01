

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var isDefaultHsnCode: Bool?

        public var hsnCodeId: String

        public var gstFee: Double

        public var igstTaxPercentage: Double

        public var valueOfGood: Double

        public var gstTag: String

        public var gstinCode: String?

        public var taxCollectedAtSource: Double

        public var sgstTaxPercentage: Double

        public var cgstGstFee: String

        public var sgstGstFee: String

        public var igstGstFee: String

        public var hsnCode: String

        public var gstTaxPercentage: Double

        public var cgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public enum CodingKeys: String, CodingKey {
            case isDefaultHsnCode = "is_default_hsn_code"

            case hsnCodeId = "hsn_code_id"

            case gstFee = "gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.isDefaultHsnCode = isDefaultHsnCode

            self.hsnCodeId = hsnCodeId

            self.gstFee = gstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.sgstTaxPercentage = sgstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.sgstGstFee = sgstGstFee

            self.igstGstFee = igstGstFee

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}

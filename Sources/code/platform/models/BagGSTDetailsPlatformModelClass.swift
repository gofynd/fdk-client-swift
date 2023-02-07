

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var taxCollectedAtSource: Double

        public var cgstTaxPercentage: Double

        public var hsnCodeId: String

        public var gstTag: String

        public var igstTaxPercentage: Double

        public var cgstGstFee: String

        public var sgstGstFee: String

        public var gstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstFee: Double

        public var sgstTaxPercentage: Double

        public var igstGstFee: String

        public var hsnCode: String

        public var gstinCode: String?

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case gstTag = "gst_tag"

            case igstTaxPercentage = "igst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstFee = "gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case hsnCode = "hsn_code"

            case gstinCode = "gstin_code"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.gstTag = gstTag

            self.igstTaxPercentage = igstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.sgstGstFee = sgstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstFee = gstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.igstGstFee = igstGstFee

            self.hsnCode = hsnCode

            self.gstinCode = gstinCode

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}

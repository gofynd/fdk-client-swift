

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstFee: Double

        public var igstGstFee: String

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var sgstGstFee: String

        public var gstinCode: String?

        public var hsnCode: String

        public var cgstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var cgstGstFee: String

        public var taxCollectedAtSource: Double

        public var igstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var valueOfGood: Double

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case igstGstFee = "igst_gst_fee"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstGstFee = "sgst_gst_fee"

            case gstinCode = "gstin_code"

            case hsnCode = "hsn_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case igstTaxPercentage = "igst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case valueOfGood = "value_of_good"

            case hsnCodeId = "hsn_code_id"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstFee = gstFee

            self.igstGstFee = igstGstFee

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstGstFee = sgstGstFee

            self.gstinCode = gstinCode

            self.hsnCode = hsnCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.igstTaxPercentage = igstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.valueOfGood = valueOfGood

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}

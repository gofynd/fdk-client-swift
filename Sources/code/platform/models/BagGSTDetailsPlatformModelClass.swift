

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var sgstGstFee: String

        public var igstGstFee: String

        public var gstTag: String

        public var isDefaultHsnCode: Bool?

        public var sgstTaxPercentage: Double

        public var gstinCode: String?

        public var hsnCode: String

        public var taxCollectedAtSource: Double

        public var cgstTaxPercentage: Double

        public var valueOfGood: Double

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var igstTaxPercentage: Double

        public var cgstGstFee: String

        public var gstTaxPercentage: Double

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case sgstGstFee = "sgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case gstTag = "gst_tag"

            case isDefaultHsnCode = "is_default_hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstinCode = "gstin_code"

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case igstTaxPercentage = "igst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCodeId = "hsn_code_id"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.sgstGstFee = sgstGstFee

            self.igstGstFee = igstGstFee

            self.gstTag = gstTag

            self.isDefaultHsnCode = isDefaultHsnCode

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstinCode = gstinCode

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstTaxPercentage = cgstTaxPercentage

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.igstTaxPercentage = igstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var hsnCode: String

        public var igstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var cgstGstFee: String

        public var sgstTaxPercentage: Double

        public var cgstTaxPercentage: Double

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var igstGstFee: String

        public var sgstGstFee: String

        public var gstFee: Double

        public var isDefaultHsnCode: Bool?

        public var gstTaxPercentage: Double

        public var gstinCode: String?

        public var valueOfGood: Double

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstGstFee = "cgst_gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case gstFee = "gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstinCode = "gstin_code"

            case valueOfGood = "value_of_good"

            case hsnCodeId = "hsn_code_id"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.igstTaxPercentage = igstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstGstFee = cgstGstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.gstFee = gstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.gstinCode = gstinCode

            self.valueOfGood = valueOfGood

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}

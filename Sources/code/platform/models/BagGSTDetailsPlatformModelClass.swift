

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstinCode: String?

        public var hsnCode: String

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var igstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var valueOfGood: Double

        public var gstFee: Double

        public var cgstGstFee: String

        public var sgstGstFee: String

        public var hsnCodeId: String

        public var isDefaultHsnCode: Bool?

        public var taxCollectedAtSource: Double

        public var cgstTaxPercentage: Double

        public var igstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstinCode = "gstin_code"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case isDefaultHsnCode = "is_default_hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstinCode = gstinCode

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.igstTaxPercentage = igstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.cgstGstFee = cgstGstFee

            self.sgstGstFee = sgstGstFee

            self.hsnCodeId = hsnCodeId

            self.isDefaultHsnCode = isDefaultHsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstGstFee = igstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)
        }
    }
}

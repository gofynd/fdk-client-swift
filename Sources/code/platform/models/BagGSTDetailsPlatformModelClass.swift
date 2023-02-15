

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var igstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var cgstTaxPercentage: Double

        public var valueOfGood: Double

        public var gstFee: Double

        public var hsnCode: String

        public var igstGstFee: String

        public var gstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var sgstGstFee: String

        public var gstinCode: String?

        public var gstTag: String

        public var sgstTaxPercentage: Double

        public var hsnCodeId: String

        public var brandCalculatedAmount: Double

        public var cgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case igstTaxPercentage = "igst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case igstGstFee = "igst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case sgstGstFee = "sgst_gst_fee"

            case gstinCode = "gstin_code"

            case gstTag = "gst_tag"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cgstGstFee = "cgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.igstTaxPercentage = igstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstTaxPercentage = cgstTaxPercentage

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.igstGstFee = igstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.sgstGstFee = sgstGstFee

            self.gstinCode = gstinCode

            self.gstTag = gstTag

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cgstGstFee = cgstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)
        }
    }
}

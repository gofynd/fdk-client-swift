

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var hsnCodeId: String

        public var hsnCode: String

        public var cgstGstFee: String

        public var taxCollectedAtSource: Double

        public var brandCalculatedAmount: Double

        public var gstFee: Double

        public var cgstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstTag: String

        public var sgstGstFee: String

        public var valueOfGood: Double

        public var igstGstFee: String

        public var gstinCode: String?

        public var igstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case hsnCode = "hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTag = "gst_tag"

            case sgstGstFee = "sgst_gst_fee"

            case valueOfGood = "value_of_good"

            case igstGstFee = "igst_gst_fee"

            case gstinCode = "gstin_code"

            case igstTaxPercentage = "igst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.hsnCodeId = hsnCodeId

            self.hsnCode = hsnCode

            self.cgstGstFee = cgstGstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTag = gstTag

            self.sgstGstFee = sgstGstFee

            self.valueOfGood = valueOfGood

            self.igstGstFee = igstGstFee

            self.gstinCode = gstinCode

            self.igstTaxPercentage = igstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)
        }
    }
}

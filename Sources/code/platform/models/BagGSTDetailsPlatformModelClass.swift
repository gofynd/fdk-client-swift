

import Foundation
public extension PlatformClient {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var isDefaultHsnCode: Bool?

        public var gstFee: Double

        public var igstTaxPercentage: Double

        public var gstTag: String

        public var sgstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var hsnCodeId: String

        public var cgstGstFee: String

        public var hsnCode: String

        public var igstGstFee: String

        public var sgstGstFee: String

        public var taxCollectedAtSource: Double

        public var brandCalculatedAmount: Double

        public var gstinCode: String?

        public var valueOfGood: Double

        public var cgstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case isDefaultHsnCode = "is_default_hsn_code"

            case gstFee = "gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstTag = "gst_tag"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case cgstGstFee = "cgst_gst_fee"

            case hsnCode = "hsn_code"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstinCode = "gstin_code"

            case valueOfGood = "value_of_good"

            case cgstTaxPercentage = "cgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstFee = gstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.gstTag = gstTag

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.cgstGstFee = cgstGstFee

            self.hsnCode = hsnCode

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstinCode = gstinCode

            self.valueOfGood = valueOfGood

            self.cgstTaxPercentage = cgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)
        }
    }
}

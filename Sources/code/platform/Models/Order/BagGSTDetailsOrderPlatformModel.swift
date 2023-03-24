

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var taxCollectedAtSource: Double

        public var igstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var isDefaultHsnCode: Bool?

        public var cgstGstFee: String

        public var gstinCode: String?

        public var igstGstFee: String

        public var sgstGstFee: String

        public var hsnCodeId: String

        public var gstFee: Double

        public var cgstTaxPercentage: Double

        public var hsnCode: String

        public var gstTaxPercentage: Double

        public var gstTag: String

        public var sgstTaxPercentage: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case igstTaxPercentage = "igst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case gstinCode = "gstin_code"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case gstFee = "gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case valueOfGood = "value_of_good"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.igstTaxPercentage = igstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstGstFee = cgstGstFee

            self.gstinCode = gstinCode

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.hsnCodeId = hsnCodeId

            self.gstFee = gstFee

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.sgstTaxPercentage = sgstTaxPercentage

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var taxCollectedAtSource: Double

        public var igstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var isDefaultHsnCode: Bool?

        public var cgstGstFee: String

        public var gstinCode: String?

        public var igstGstFee: String

        public var sgstGstFee: String

        public var hsnCodeId: String

        public var gstFee: Double

        public var cgstTaxPercentage: Double

        public var hsnCode: String

        public var gstTaxPercentage: Double

        public var gstTag: String

        public var sgstTaxPercentage: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case igstTaxPercentage = "igst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case gstinCode = "gstin_code"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case gstFee = "gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case valueOfGood = "value_of_good"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.igstTaxPercentage = igstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstGstFee = cgstGstFee

            self.gstinCode = gstinCode

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.hsnCodeId = hsnCodeId

            self.gstFee = gstFee

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.sgstTaxPercentage = sgstTaxPercentage

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}

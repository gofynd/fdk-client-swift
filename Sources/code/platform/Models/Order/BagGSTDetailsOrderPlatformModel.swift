

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstFee: Double

        public var gstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var sgstTaxPercentage: Double

        public var cgstGstFee: String

        public var igstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstTag: String

        public var hsnCode: String

        public var cgstTaxPercentage: Double

        public var igstGstFee: String

        public var gstinCode: String?

        public var taxCollectedAtSource: Double

        public var hsnCodeId: String

        public var valueOfGood: Double

        public var sgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTag = "gst_tag"

            case hsnCode = "hsn_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"

            case sgstGstFee = "sgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstFee = gstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstTaxPercentage = sgstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTag = gstTag

            self.hsnCode = hsnCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstGstFee = igstGstFee

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood

            self.sgstGstFee = sgstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstFee: Double

        public var gstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var sgstTaxPercentage: Double

        public var cgstGstFee: String

        public var igstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstTag: String

        public var hsnCode: String

        public var cgstTaxPercentage: Double

        public var igstGstFee: String

        public var gstinCode: String?

        public var taxCollectedAtSource: Double

        public var hsnCodeId: String

        public var valueOfGood: Double

        public var sgstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTag = "gst_tag"

            case hsnCode = "hsn_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"

            case sgstGstFee = "sgst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstFee = gstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstTaxPercentage = sgstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTag = gstTag

            self.hsnCode = hsnCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstGstFee = igstGstFee

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood

            self.sgstGstFee = sgstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)
        }
    }
}



import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var igstTaxPercentage: Double

        public var cgstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var isDefaultHsnCode: Bool?

        public var valueOfGood: Double

        public var hsnCode: String

        public var brandCalculatedAmount: Double

        public var gstinCode: String?

        public var gstTag: String

        public var hsnCodeId: String

        public var gstFee: Double

        public var cgstGstFee: String

        public var sgstGstFee: String

        public var gstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var igstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case igstTaxPercentage = "igst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case isDefaultHsnCode = "is_default_hsn_code"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstinCode = "gstin_code"

            case gstTag = "gst_tag"

            case hsnCodeId = "hsn_code_id"

            case gstFee = "gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.igstTaxPercentage = igstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.isDefaultHsnCode = isDefaultHsnCode

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstinCode = gstinCode

            self.gstTag = gstTag

            self.hsnCodeId = hsnCodeId

            self.gstFee = gstFee

            self.cgstGstFee = cgstGstFee

            self.sgstGstFee = sgstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.igstGstFee = igstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var igstTaxPercentage: Double

        public var cgstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var isDefaultHsnCode: Bool?

        public var valueOfGood: Double

        public var hsnCode: String

        public var brandCalculatedAmount: Double

        public var gstinCode: String?

        public var gstTag: String

        public var hsnCodeId: String

        public var gstFee: Double

        public var cgstGstFee: String

        public var sgstGstFee: String

        public var gstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var igstGstFee: String

        public enum CodingKeys: String, CodingKey {
            case igstTaxPercentage = "igst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case isDefaultHsnCode = "is_default_hsn_code"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstinCode = "gstin_code"

            case gstTag = "gst_tag"

            case hsnCodeId = "hsn_code_id"

            case gstFee = "gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.igstTaxPercentage = igstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.isDefaultHsnCode = isDefaultHsnCode

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstinCode = gstinCode

            self.gstTag = gstTag

            self.hsnCodeId = hsnCodeId

            self.gstFee = gstFee

            self.cgstGstFee = cgstGstFee

            self.sgstGstFee = sgstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.igstGstFee = igstGstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)
        }
    }
}



import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var taxCollectedAtSource: Double

        public var brandCalculatedAmount: Double

        public var sgstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var gstTag: String

        public var cgstTaxPercentage: Double

        public var hsnCodeId: String

        public var gstinCode: String?

        public var igstTaxPercentage: Double

        public var gstFee: Double

        public var valueOfGood: Double

        public var hsnCode: String

        public var cgstGstFee: String

        public var igstGstFee: String

        public var sgstGstFee: String

        public var isDefaultHsnCode: Bool?

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case gstinCode = "gstin_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.gstinCode = gstinCode

            self.igstTaxPercentage = igstTaxPercentage

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.cgstGstFee = cgstGstFee

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.isDefaultHsnCode = isDefaultHsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)
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

        public var brandCalculatedAmount: Double

        public var sgstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var gstTag: String

        public var cgstTaxPercentage: Double

        public var hsnCodeId: String

        public var gstinCode: String?

        public var igstTaxPercentage: Double

        public var gstFee: Double

        public var valueOfGood: Double

        public var hsnCode: String

        public var cgstGstFee: String

        public var igstGstFee: String

        public var sgstGstFee: String

        public var isDefaultHsnCode: Bool?

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case gstinCode = "gstin_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.gstinCode = gstinCode

            self.igstTaxPercentage = igstTaxPercentage

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.cgstGstFee = cgstGstFee

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.isDefaultHsnCode = isDefaultHsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)
        }
    }
}



import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var hsnCode: String

        public var sgstTaxPercentage: Double

        public var hsnCodeId: String

        public var gstTaxPercentage: Double

        public var valueOfGood: Double

        public var taxCollectedAtSource: Double

        public var gstFee: Double

        public var cgstGstFee: String

        public var gstinCode: String?

        public var brandCalculatedAmount: Double

        public var cgstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var igstGstFee: String

        public var sgstGstFee: String

        public var gstTag: String

        public var isDefaultHsnCode: Bool?

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case gstinCode = "gstin_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case gstTag = "gst_tag"

            case isDefaultHsnCode = "is_default_hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.cgstGstFee = cgstGstFee

            self.gstinCode = gstinCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.gstTag = gstTag

            self.isDefaultHsnCode = isDefaultHsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

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
        public var hsnCode: String

        public var sgstTaxPercentage: Double

        public var hsnCodeId: String

        public var gstTaxPercentage: Double

        public var valueOfGood: Double

        public var taxCollectedAtSource: Double

        public var gstFee: Double

        public var cgstGstFee: String

        public var gstinCode: String?

        public var brandCalculatedAmount: Double

        public var cgstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var igstGstFee: String

        public var sgstGstFee: String

        public var gstTag: String

        public var isDefaultHsnCode: Bool?

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case gstinCode = "gstin_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case gstTag = "gst_tag"

            case isDefaultHsnCode = "is_default_hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.cgstGstFee = cgstGstFee

            self.gstinCode = gstinCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.gstTag = gstTag

            self.isDefaultHsnCode = isDefaultHsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)
        }
    }
}

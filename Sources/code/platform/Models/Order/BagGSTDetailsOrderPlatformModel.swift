

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var igstGstFee: String

        public var isDefaultHsnCode: Bool?

        public var gstTag: String

        public var cgstGstFee: String

        public var gstFee: Double

        public var sgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var gstTaxPercentage: Double

        public var valueOfGood: Double

        public var sgstGstFee: String

        public var hsnCodeId: String

        public var cgstTaxPercentage: Double

        public var gstinCode: String?

        public var igstTaxPercentage: Double

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case igstGstFee = "igst_gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTag = "gst_tag"

            case cgstGstFee = "cgst_gst_fee"

            case gstFee = "gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case gstinCode = "gstin_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case hsnCode = "hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.igstGstFee = igstGstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTag = gstTag

            self.cgstGstFee = cgstGstFee

            self.gstFee = gstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.sgstGstFee = sgstGstFee

            self.hsnCodeId = hsnCodeId

            self.cgstTaxPercentage = cgstTaxPercentage

            self.gstinCode = gstinCode

            self.igstTaxPercentage = igstTaxPercentage

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var igstGstFee: String

        public var isDefaultHsnCode: Bool?

        public var gstTag: String

        public var cgstGstFee: String

        public var gstFee: Double

        public var sgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var gstTaxPercentage: Double

        public var valueOfGood: Double

        public var sgstGstFee: String

        public var hsnCodeId: String

        public var cgstTaxPercentage: Double

        public var gstinCode: String?

        public var igstTaxPercentage: Double

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case igstGstFee = "igst_gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTag = "gst_tag"

            case cgstGstFee = "cgst_gst_fee"

            case gstFee = "gst_fee"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case gstinCode = "gstin_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case hsnCode = "hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.igstGstFee = igstGstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTag = gstTag

            self.cgstGstFee = cgstGstFee

            self.gstFee = gstFee

            self.sgstTaxPercentage = sgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.sgstGstFee = sgstGstFee

            self.hsnCodeId = hsnCodeId

            self.cgstTaxPercentage = cgstTaxPercentage

            self.gstinCode = gstinCode

            self.igstTaxPercentage = igstTaxPercentage

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}

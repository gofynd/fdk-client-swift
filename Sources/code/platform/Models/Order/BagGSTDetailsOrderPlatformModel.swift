

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var igstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var cgstGstFee: String

        public var gstTag: String

        public var cgstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var gstinCode: String?

        public var valueOfGood: Double

        public var gstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var igstGstFee: String

        public var gstFee: Double

        public var hsnCodeId: String

        public var isDefaultHsnCode: Bool?

        public var sgstGstFee: String

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case igstTaxPercentage = "igst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstGstFee = "cgst_gst_fee"

            case gstTag = "gst_tag"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstinCode = "gstin_code"

            case valueOfGood = "value_of_good"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case igstGstFee = "igst_gst_fee"

            case gstFee = "gst_fee"

            case hsnCodeId = "hsn_code_id"

            case isDefaultHsnCode = "is_default_hsn_code"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCode = "hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.igstTaxPercentage = igstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstGstFee = cgstGstFee

            self.gstTag = gstTag

            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstinCode = gstinCode

            self.valueOfGood = valueOfGood

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.igstGstFee = igstGstFee

            self.gstFee = gstFee

            self.hsnCodeId = hsnCodeId

            self.isDefaultHsnCode = isDefaultHsnCode

            self.sgstGstFee = sgstGstFee

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

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
        public var igstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var cgstGstFee: String

        public var gstTag: String

        public var cgstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var gstinCode: String?

        public var valueOfGood: Double

        public var gstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var igstGstFee: String

        public var gstFee: Double

        public var hsnCodeId: String

        public var isDefaultHsnCode: Bool?

        public var sgstGstFee: String

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case igstTaxPercentage = "igst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstGstFee = "cgst_gst_fee"

            case gstTag = "gst_tag"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case gstinCode = "gstin_code"

            case valueOfGood = "value_of_good"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case igstGstFee = "igst_gst_fee"

            case gstFee = "gst_fee"

            case hsnCodeId = "hsn_code_id"

            case isDefaultHsnCode = "is_default_hsn_code"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCode = "hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.igstTaxPercentage = igstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstGstFee = cgstGstFee

            self.gstTag = gstTag

            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.gstinCode = gstinCode

            self.valueOfGood = valueOfGood

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.igstGstFee = igstGstFee

            self.gstFee = gstFee

            self.hsnCodeId = hsnCodeId

            self.isDefaultHsnCode = isDefaultHsnCode

            self.sgstGstFee = sgstGstFee

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}

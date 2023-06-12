

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstTag: String

        public var isDefaultHsnCode: Bool?

        public var igstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var valueOfGood: Double

        public var gstinCode: String?

        public var cgstTaxPercentage: Double

        public var cgstGstFee: String

        public var gstFee: Double

        public var hsnCodeId: String

        public var brandCalculatedAmount: Double

        public var gstTaxPercentage: Double

        public var igstGstFee: String

        public var sgstGstFee: String

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"

            case gstinCode = "gstin_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case gstFee = "gst_fee"

            case hsnCodeId = "hsn_code_id"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCode = "hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstTaxPercentage = igstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood

            self.gstinCode = gstinCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.gstFee = gstFee

            self.hsnCodeId = hsnCodeId

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

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
        public var gstTag: String

        public var isDefaultHsnCode: Bool?

        public var igstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public var taxCollectedAtSource: Double

        public var valueOfGood: Double

        public var gstinCode: String?

        public var cgstTaxPercentage: Double

        public var cgstGstFee: String

        public var gstFee: Double

        public var hsnCodeId: String

        public var brandCalculatedAmount: Double

        public var gstTaxPercentage: Double

        public var igstGstFee: String

        public var sgstGstFee: String

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstTaxPercentage = "igst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"

            case gstinCode = "gstin_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case cgstGstFee = "cgst_gst_fee"

            case gstFee = "gst_fee"

            case hsnCodeId = "hsn_code_id"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case hsnCode = "hsn_code"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstTaxPercentage = igstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood

            self.gstinCode = gstinCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.cgstGstFee = cgstGstFee

            self.gstFee = gstFee

            self.hsnCodeId = hsnCodeId

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}

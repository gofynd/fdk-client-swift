

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var taxCollectedAtSource: Double

        public var hsnCode: String

        public var sgstGstFee: String

        public var cgstGstFee: String

        public var igstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var gstinCode: String?

        public var gstTaxPercentage: Double

        public var gstFee: Double

        public var gstTag: String

        public var isDefaultHsnCode: Bool?

        public var igstGstFee: String

        public var hsnCodeId: String

        public var valueOfGood: Double

        public var cgstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case sgstGstFee = "sgst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstinCode = "gstin_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstGstFee = "igst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.sgstGstFee = sgstGstFee

            self.cgstGstFee = cgstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstinCode = gstinCode

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.gstTag = gstTag

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstGstFee = igstGstFee

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood

            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)
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

        public var hsnCode: String

        public var sgstGstFee: String

        public var cgstGstFee: String

        public var igstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var gstinCode: String?

        public var gstTaxPercentage: Double

        public var gstFee: Double

        public var gstTag: String

        public var isDefaultHsnCode: Bool?

        public var igstGstFee: String

        public var hsnCodeId: String

        public var valueOfGood: Double

        public var cgstTaxPercentage: Double

        public var sgstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case sgstGstFee = "sgst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstinCode = "gstin_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case isDefaultHsnCode = "is_default_hsn_code"

            case igstGstFee = "igst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case sgstTaxPercentage = "sgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.sgstGstFee = sgstGstFee

            self.cgstGstFee = cgstGstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstinCode = gstinCode

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.gstTag = gstTag

            self.isDefaultHsnCode = isDefaultHsnCode

            self.igstGstFee = igstGstFee

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood

            self.cgstTaxPercentage = cgstTaxPercentage

            self.sgstTaxPercentage = sgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)
        }
    }
}

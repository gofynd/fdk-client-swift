

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstTag: String

        public var gstTaxPercentage: Double

        public var igstGstFee: String

        public var hsnCodeId: String

        public var igstTaxPercentage: Double

        public var cgstTaxPercentage: Double

        public var hsnCode: String

        public var gstinCode: String?

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public var cgstGstFee: String

        public var taxCollectedAtSource: Double

        public var sgstGstFee: String

        public var isDefaultHsnCode: Bool?

        public var sgstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case igstTaxPercentage = "igst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCode = "hsn_code"

            case gstinCode = "gstin_code"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case cgstGstFee = "cgst_gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case sgstGstFee = "sgst_gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.igstGstFee = igstGstFee

            self.hsnCodeId = hsnCodeId

            self.igstTaxPercentage = igstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCode = hsnCode

            self.gstinCode = gstinCode

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.cgstGstFee = cgstGstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.sgstGstFee = sgstGstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.sgstTaxPercentage = sgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

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
        public var gstTag: String

        public var gstTaxPercentage: Double

        public var igstGstFee: String

        public var hsnCodeId: String

        public var igstTaxPercentage: Double

        public var cgstTaxPercentage: Double

        public var hsnCode: String

        public var gstinCode: String?

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public var cgstGstFee: String

        public var taxCollectedAtSource: Double

        public var sgstGstFee: String

        public var isDefaultHsnCode: Bool?

        public var sgstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case hsnCodeId = "hsn_code_id"

            case igstTaxPercentage = "igst_tax_percentage"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case hsnCode = "hsn_code"

            case gstinCode = "gstin_code"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case cgstGstFee = "cgst_gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case sgstGstFee = "sgst_gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.igstGstFee = igstGstFee

            self.hsnCodeId = hsnCodeId

            self.igstTaxPercentage = igstTaxPercentage

            self.cgstTaxPercentage = cgstTaxPercentage

            self.hsnCode = hsnCode

            self.gstinCode = gstinCode

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.cgstGstFee = cgstGstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.sgstGstFee = sgstGstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.sgstTaxPercentage = sgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)
        }
    }
}

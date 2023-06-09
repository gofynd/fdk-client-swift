

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

        public var taxCollectedAtSource: Double

        public var cgstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var sgstGstFee: String

        public var gstinCode: String?

        public var isDefaultHsnCode: Bool?

        public var gstFee: Double

        public var valueOfGood: Double

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var cgstGstFee: String

        public var igstGstFee: String

        public var gstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case gstinCode = "gstin_code"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cgstGstFee = "cgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.gstinCode = gstinCode

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cgstGstFee = cgstGstFee

            self.igstGstFee = igstGstFee

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
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

        public var taxCollectedAtSource: Double

        public var cgstTaxPercentage: Double

        public var igstTaxPercentage: Double

        public var sgstGstFee: String

        public var gstinCode: String?

        public var isDefaultHsnCode: Bool?

        public var gstFee: Double

        public var valueOfGood: Double

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var cgstGstFee: String

        public var igstGstFee: String

        public var gstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstTaxPercentage = "igst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case gstinCode = "gstin_code"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cgstGstFee = "cgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.sgstTaxPercentage = sgstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstTaxPercentage = igstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.gstinCode = gstinCode

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cgstGstFee = cgstGstFee

            self.igstGstFee = igstGstFee

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
        }
    }
}

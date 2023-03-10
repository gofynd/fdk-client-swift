

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstTag: String

        public var igstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var hsnCodeId: String

        public var valueOfGood: Double

        public var hsnCode: String

        public var cgstGstFee: String

        public var igstGstFee: String

        public var taxCollectedAtSource: Double

        public var sgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var gstFee: Double

        public var isDefaultHsnCode: Bool?

        public var gstinCode: String?

        public var sgstGstFee: String

        public var cgstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstinCode = "gstin_code"

            case sgstGstFee = "sgst_gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.igstTaxPercentage = igstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.cgstGstFee = cgstGstFee

            self.igstGstFee = igstGstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.sgstTaxPercentage = sgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstinCode = gstinCode

            self.sgstGstFee = sgstGstFee

            self.cgstTaxPercentage = cgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)
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

        public var igstTaxPercentage: Double

        public var gstTaxPercentage: Double

        public var hsnCodeId: String

        public var valueOfGood: Double

        public var hsnCode: String

        public var cgstGstFee: String

        public var igstGstFee: String

        public var taxCollectedAtSource: Double

        public var sgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var gstFee: Double

        public var isDefaultHsnCode: Bool?

        public var gstinCode: String?

        public var sgstGstFee: String

        public var cgstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case igstTaxPercentage = "igst_tax_percentage"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCodeId = "hsn_code_id"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstinCode = "gstin_code"

            case sgstGstFee = "sgst_gst_fee"

            case cgstTaxPercentage = "cgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.igstTaxPercentage = igstTaxPercentage

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCodeId = hsnCodeId

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.cgstGstFee = cgstGstFee

            self.igstGstFee = igstGstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.sgstTaxPercentage = sgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstinCode = gstinCode

            self.sgstGstFee = sgstGstFee

            self.cgstTaxPercentage = cgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)
        }
    }
}

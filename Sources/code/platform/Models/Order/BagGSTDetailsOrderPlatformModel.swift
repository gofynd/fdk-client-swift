

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var isDefaultHsnCode: Bool?

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var cgstGstFee: String

        public var valueOfGood: Double

        public var hsnCodeId: String

        public var cgstTaxPercentage: Double

        public var igstGstFee: String

        public var gstinCode: String?

        public var gstTaxPercentage: Double

        public var sgstGstFee: String

        public var gstFee: Double

        public var igstTaxPercentage: Double

        public var hsnCode: String

        public var sgstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstGstFee = "cgst_gst_fee"

            case valueOfGood = "value_of_good"

            case hsnCodeId = "hsn_code_id"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case gstinCode = "gstin_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case gstFee = "gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case hsnCode = "hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstGstFee = cgstGstFee

            self.valueOfGood = valueOfGood

            self.hsnCodeId = hsnCodeId

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstGstFee = igstGstFee

            self.gstinCode = gstinCode

            self.gstTaxPercentage = gstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.gstFee = gstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.hsnCode = hsnCode

            self.sgstTaxPercentage = sgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

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
        public var isDefaultHsnCode: Bool?

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var cgstGstFee: String

        public var valueOfGood: Double

        public var hsnCodeId: String

        public var cgstTaxPercentage: Double

        public var igstGstFee: String

        public var gstinCode: String?

        public var gstTaxPercentage: Double

        public var sgstGstFee: String

        public var gstFee: Double

        public var igstTaxPercentage: Double

        public var hsnCode: String

        public var sgstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cgstGstFee = "cgst_gst_fee"

            case valueOfGood = "value_of_good"

            case hsnCodeId = "hsn_code_id"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case igstGstFee = "igst_gst_fee"

            case gstinCode = "gstin_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case gstFee = "gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case hsnCode = "hsn_code"

            case sgstTaxPercentage = "sgst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cgstGstFee = cgstGstFee

            self.valueOfGood = valueOfGood

            self.hsnCodeId = hsnCodeId

            self.cgstTaxPercentage = cgstTaxPercentage

            self.igstGstFee = igstGstFee

            self.gstinCode = gstinCode

            self.gstTaxPercentage = gstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.gstFee = gstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.hsnCode = hsnCode

            self.sgstTaxPercentage = sgstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)
        }
    }
}

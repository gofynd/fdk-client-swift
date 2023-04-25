

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstTag: String

        public var cgstTaxPercentage: Double

        public var gstinCode: String?

        public var brandCalculatedAmount: Double

        public var hsnCodeId: String

        public var gstFee: Double

        public var igstTaxPercentage: Double

        public var sgstGstFee: String

        public var taxCollectedAtSource: Double

        public var hsnCode: String

        public var cgstGstFee: String

        public var igstGstFee: String

        public var valueOfGood: Double

        public var sgstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case gstinCode = "gstin_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case hsnCodeId = "hsn_code_id"

            case gstFee = "gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case valueOfGood = "value_of_good"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.cgstTaxPercentage = cgstTaxPercentage

            self.gstinCode = gstinCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.hsnCodeId = hsnCodeId

            self.gstFee = gstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.cgstGstFee = cgstGstFee

            self.igstGstFee = igstGstFee

            self.valueOfGood = valueOfGood

            self.sgstTaxPercentage = sgstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

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
        public var gstTag: String

        public var cgstTaxPercentage: Double

        public var gstinCode: String?

        public var brandCalculatedAmount: Double

        public var hsnCodeId: String

        public var gstFee: Double

        public var igstTaxPercentage: Double

        public var sgstGstFee: String

        public var taxCollectedAtSource: Double

        public var hsnCode: String

        public var cgstGstFee: String

        public var igstGstFee: String

        public var valueOfGood: Double

        public var sgstTaxPercentage: Double

        public var isDefaultHsnCode: Bool?

        public var gstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case gstinCode = "gstin_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case hsnCodeId = "hsn_code_id"

            case gstFee = "gst_fee"

            case igstTaxPercentage = "igst_tax_percentage"

            case sgstGstFee = "sgst_gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case cgstGstFee = "cgst_gst_fee"

            case igstGstFee = "igst_gst_fee"

            case valueOfGood = "value_of_good"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstTag = gstTag

            self.cgstTaxPercentage = cgstTaxPercentage

            self.gstinCode = gstinCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.hsnCodeId = hsnCodeId

            self.gstFee = gstFee

            self.igstTaxPercentage = igstTaxPercentage

            self.sgstGstFee = sgstGstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.cgstGstFee = cgstGstFee

            self.igstGstFee = igstGstFee

            self.valueOfGood = valueOfGood

            self.sgstTaxPercentage = sgstTaxPercentage

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstTaxPercentage = gstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
        }
    }
}
